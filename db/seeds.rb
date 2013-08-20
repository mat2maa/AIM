# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({:name => role}, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

user = User.find_or_create_by_email :name => ENV['AIM_NAME'].dup, :email => ENV['AIM_EMAIL'].dup, :password => ENV['AIM_PASSWORD'].dup, :password_confirmation => ENV['AIM_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

UserProfile.create(
    [
        {
            contact_name: "Matthew Ager",
            user_id: "1"
        },
        {
            contact_name: "Animation In Motion",
            user_id: "2"
        }
    ]
)

Airline.create(
    [
        {
            name: "Matthew Air",
            code: "MA",
            user_profile_id: "1"
        },
        {
            name: "Guest Airline",
            code: "AIM",
            user_profile_id: "2"
        }
    ]
)

Aeroplane.create(
    [
        {
            manufacturer: 'Boeing',
            name: '737'
        },
        {
            manufacturer: 'Airbus',
            name: 'A310'
        },
        {
            manufacturer: 'Embraer',
            name: 'E170'
        },
        {
            manufacturer: 'Boeing',
            name: '747-200F'
        },
        {
            manufacturer: 'Boeing',
            name: '767-300'
        },
        {
            manufacturer: 'Boeing',
            name: '777-200'
        },
        {
            manufacturer: 'Airbus',
            name: 'A300'
        },
        {
            manufacturer: 'Airbus',
            name: 'A318'
        },
        {
            manufacturer: 'Airbus',
            name: 'A319'
        },
        {
            manufacturer: 'Embraer',
            name: 'ERJ 135'
        },
        {
            manufacturer: 'Embraer',
            name: 'ERJ 140'
        },
        {
            manufacturer: 'Embraer',
            name: 'E195-E2'
        }
    ]
)

Script.create(
    [
        {
            aeroplane_id: 5
        }
    ]
)

Scene.create(
    [
        { script_id: 1, sequence_position: 1, storyboard: 'Mother tapping boy on shoulder to stop looking out window and sit down', english_subtitle: 'Ladies and gentlemen, Hong Kong Airlines welcome you on-board.', foreign_subtitle_1: '各位乘客, 歡迎閣下乘搭香港航空公司嘅班機。', foreign_subtitle_2: '各位旅客, 歡迎搭乘香港航空班機。' },
        { script_id: 1, sequence_position: 2, storyboard: 'Mother and boy sitting down facing forward', english_subtitle: 'Please pay attention to our safety briefing.', foreign_subtitle_1: '請注意以下安全示範。', foreign_subtitle_2: '請注意以下安全示範。' },
        { script_id: 1, sequence_position: 3, storyboard: 'Mother switching off phone, boy playing PSP.', english_subtitle: 'For your safety, mobile phones and electronic transmitting devices must be turned off at all times. ', foreign_subtitle_1: '為咗閣下嘅安全, 任何時間, 所有手提電話及信號發射裝置都必須關掉。', foreign_subtitle_2: '為了您的旅途安全, 任何時間, 所有手提電話及信號發射裝置都必須關掉。' },
        { script_id: 1, sequence_position: 4, storyboard: 'Mother has turned off phone and is now coercing child to do the same.', english_subtitle: 'Personal electronic items can only be used when the `No Electronic Devices` sign has been turned off as these devices can interfere with aircraft instruments and systems.', foreign_subtitle_1: '個人電子儀器只可於「禁止使用電子儀器」燈號熄滅之後先至可以使用,  以免影響機上嘅儀器運作。', foreign_subtitle_2: '個人電子儀器只可於「禁止使用電子儀器」燈號熄滅後才可使用, 以免影響機上的儀器運作。' },
        { script_id: 1, sequence_position: 5, storyboard: 'Photo of No Smoking Sign', english_subtitle: 'This is a non-smoking flight.', foreign_subtitle_1: '本客機為禁煙航班,', foreign_subtitle_2: '本客機為禁煙航班, ' },
        { script_id: 1, sequence_position: 6, storyboard: 'Photo of Lavatory door', english_subtitle: 'There are smoke detectors with alarms equipped in every toilet.', foreign_subtitle_1: '所有洗手間內都裝有煙霧探測器。', foreign_subtitle_2: '所有洗手間內都裝有煙霧探測器。' },
        { script_id: 1, sequence_position: 7, storyboard: 'Same shot above', english_subtitle: 'It is an offence under Hong Kong law to smoke in the toilet or any other area of the aircraft. Offenders are liable on conviction, to a fine not exceeding HK$50,000 and to imprisonment for a term not exceeding 2 years.', foreign_subtitle_1: '根據香港法例, 於飛機內嘅洗手間或任何地方吸煙, 即屬違法, 一經定罪, 最高罰款額為港幣50,000元以及最長監禁期2 年。', foreign_subtitle_2: '根據香港法例, 在飛機內的洗手間或任何地方吸煙, 即屬違法, 一經定罪, 最高罰款額為港幣五萬元及最長監禁期兩年。' },
        { script_id: 1, sequence_position: 8, storyboard: 'Luggage in overhead compartment', english_subtitle: 'All baggage must be stowed in the overhead compartments', foreign_subtitle_1: '請將手提行李妥善放置行李格內', foreign_subtitle_2: '請將手提行李放在行李櫃裡面, ' },
        { script_id: 1, sequence_position: 9, storyboard: 'Luggage under seat', english_subtitle: 'or under the seat in front of you.', foreign_subtitle_1: '或者前面嘅座椅下。', foreign_subtitle_2: '或者前面的座椅下。' },
        { script_id: 1, sequence_position: 10, storyboard: 'Aisle shot, no bags. ', english_subtitle: 'The aisles and exits must be clear of baggage and obstructions.', foreign_subtitle_1: '並保持走廊及緊急出口暢通無阻。', foreign_subtitle_2: '走道和出口都應該保持暢通無阻。' },
        { script_id: 1, sequence_position: 11, storyboard: 'Mother fastening seatbelt / inserts buckle / adjusts', english_subtitle: 'The seatbelt is fastened and adjusted like this.', foreign_subtitle_1: '安全帶喺咁樣扣上, 鬆緊係可以咁樣調較嘅。', foreign_subtitle_2: '安全帶是這樣扣上, 鬆緊是這樣調較的。' },
        { script_id: 1, sequence_position: 12, storyboard: 'continuous image from above, mother unfastens belt', english_subtitle: 'To release the seatbelt, lift the buckle.', foreign_subtitle_1: '要解開安全帶, 請將帶扣拉起。', foreign_subtitle_2: '解開時拉起帶扣。' },
        { script_id: 1, sequence_position: 13, storyboard: 'Mother and boy sitting with belts fastened, tables up', english_subtitle: 'We strongly recommend that you keep your seatbelt fastened when seated, as there may be unexpected turbulence in flight.', foreign_subtitle_1: '為咗閣下嘅安全, 無論任何時候, 請扣好安全帶及以防突發氣流。', foreign_subtitle_2: '為避免氣流導致危險, 我們建議您在旅途中保持安全帶緊扣。' },
        { script_id: 1, sequence_position: 14, storyboard: 'continuous image from above scans up to show mother and boys face, should show panel above', english_subtitle: 'Oxygen masks are located in the panel above you.', foreign_subtitle_1: '氧氣面罩設於上方壁板內。', foreign_subtitle_2: '氧氣面罩設於座位上方。' },
        { script_id: 1, sequence_position: 15, storyboard: 'continuous image from above mask drops', english_subtitle: 'If oxygen is required, masks will drop automatically.', foreign_subtitle_1: '當有需要時, 氧氣面罩會自動跌下。', foreign_subtitle_2: '在有需要時, 氧氣面罩會自動掉下來。' },
        { script_id: 1, sequence_position: 16, storyboard: 'Mother pulls down oxygen mask, boy watches, places over mouth.', english_subtitle: 'Pull the mask down and place it over your nose and mouth.', foreign_subtitle_1: '先拉低面罩, 蓋喺口鼻上。', foreign_subtitle_2: '請拉下面罩, 遮蓋口鼻。' },
        { script_id: 1, sequence_position: 17, storyboard: 'Mother places mask over mouth, boy watches', english_subtitle: 'Adjust the straps and breathe normally.', foreign_subtitle_1: '再調較繩索, 作正常呼吸。', foreign_subtitle_2: '調整繩索, 作正常呼吸。' },
        { script_id: 1, sequence_position: 18, storyboard: 'Mother with mask on, then assists boy to use mask', english_subtitle: 'Attend to yourself before helping children or others.', foreign_subtitle_1: '乘客應該先照顧自己, 然後照顧小童或其他人 。', foreign_subtitle_2: '首先請自行佩戴面罩, 再幫助兒童或其他人。' },
        { script_id: 1, sequence_position: 19, storyboard: 'Business and economy seat showing life jacket storage. Then zoom into business class seat.', english_subtitle: 'Your life jacket is located in a pouch, under the arm rest, in-between business class seats.', foreign_subtitle_1: '商務艙救生衣置於兩個坐位嘅扶手下面。', foreign_subtitle_2: '商務艙救生衣放在兩個坐位的扶手下。' },
        { script_id: 1, sequence_position: 20, storyboard: 'zoom into economy seat to show life jacket storage.', english_subtitle: 'And under your seat in economy class. ', foreign_subtitle_1: '經濟艙救生衣則放喺坐位下。', foreign_subtitle_2: '經濟艙救生衣放在坐位下。' },
        { script_id: 1, sequence_position: 21, storyboard: 'Stay on economy seat, pan up, show opening of lifejacket bag', english_subtitle: 'In a water evacuation remove the life jacket from its pouch.', foreign_subtitle_1: '喺水上徹離時, 請由袋中攞出救生衣。', foreign_subtitle_2: '於水上徹離時, 請由袋中取出救生衣。' },
        { script_id: 1, sequence_position: 22, storyboard: 'Mother standing and demonstrating life jacket instructions', english_subtitle: 'Place the life jacket over your head. ', foreign_subtitle_1: '使用時, 先將救生衣套喺頸上, ', foreign_subtitle_2: '把救生衣套在身上,' },
        { script_id: 1, sequence_position: 23, storyboard: 'Mother standing and demonstrating life jacket instructions', english_subtitle: 'Buckle and adjust the strap firmly around your waist.', foreign_subtitle_1: '然後扣緊腰帶。', foreign_subtitle_2: '扣緊腰帶。' },
        { script_id: 1, sequence_position: 24, storyboard: 'Distance shot of mother in jacket then zoom in to show pulling tags / jacket inflates. (note background changes to cabin doorway)', english_subtitle: 'When leaving the aircraft, inflate your life jacket by pulling the red toggle firmly down ', foreign_subtitle_1: '喺離開機艙時, 用力拉下紅色手掣將救生衣充氣。', foreign_subtitle_2: '在離開機艙時, 請拉下紅色手掣將救生衣充氣。. ' },
        { script_id: 1, sequence_position: 25, storyboard: 'Close up Mother, blows into tubes.', english_subtitle: 'Or blowing into the tube.', foreign_subtitle_1: '或用吹氣管充氣。', foreign_subtitle_2: '或者用吹氣管吹氣。' },
        { script_id: 1, sequence_position: 26, storyboard: 'Close up Mother, blows whistle and shines light', english_subtitle: 'To attract attention there is a whistle and a light.', foreign_subtitle_1: '救生衣上附有哨子同燈, 以引起注意', foreign_subtitle_2: '救生衣上附有哨子和燈, 以引起注意。' },
        { script_id: 1, sequence_position: 27, storyboard: 'Photo of Infant life Jacket and Baby Floatation Cot', english_subtitle: 'Infant life jacket and baby flotation cot are also carried.', foreign_subtitle_1: '機上亦設有小朋友救生衣及嬰兒浮床。', foreign_subtitle_2: '機內亦設有小孩救生衣及嬰兒浮床。' },
        { script_id: 1, sequence_position: 28, storyboard: 'Image of model of aircraft from above', english_subtitle: 'There are eight emergency exits on this aircraft.', foreign_subtitle_1: '本機設有八個緊急出口。', foreign_subtitle_2: '飛機上有八個緊急出口。' },
        { script_id: 1, sequence_position: 29, storyboard: 'Same model but with flow lines for exits', english_subtitle: 'Four on the left and four on the right. ', foreign_subtitle_1: '左右各方都設有四個出口。', foreign_subtitle_2: '左右兩邊各有四個出口。' },
        { script_id: 1, sequence_position: 30, storyboard: 'Same model as still (direction not flowing)', english_subtitle: 'Evacuation slides are located at all exits.', foreign_subtitle_1: '每個緊急出口都設有逃生滑梯裝置。', foreign_subtitle_2: '每個緊急出口都設有逃生滑梯。' },
        { script_id: 1, sequence_position: 31, storyboard: 'Same model as still (direction not flowing), with X on 3L and 3R', english_subtitle: 'If the aircraft lands on water, doors 3 left and 3 right should not be used.', foreign_subtitle_1: '如果飛機降落於水面上，左右第三道緊急出口都唔可以使用。', foreign_subtitle_2: '如果飛機降落在水面上，不可使用左右兩邊第三號緊急出口。' },
        { script_id: 1, sequence_position: 32, storyboard: 'Same model with lighting paths shown from above aircraft.', english_subtitle: 'There is an escape path lighting along the aisles.', foreign_subtitle_1: '機艙內設有緊急逃生路線照明系統,', foreign_subtitle_2: '機艙內設有緊急逃生路線照明系統, ' },
        { script_id: 1, sequence_position: 33, storyboard: 'Internal shot of aisle lighting', english_subtitle: 'It will be illuminated in an emergency.', foreign_subtitle_1: '喺緊急情況下，照明系統會自動亮起。', foreign_subtitle_2: '在緊急情況下，照明系統會自動亮起。' },
        { script_id: 1, sequence_position: 34, storyboard: 'Show Internal Exit Door', english_subtitle: 'Exits are marked and are now being pointed out by our Cabin Crew.', foreign_subtitle_1: '而家機艙服務員會為您指示逃生出口嘅位置，所有出口都已經清楚標示。', foreign_subtitle_2: '現在機艙服務員正為您指示逃生出口的位置,所有出口都已經清楚顯示。' },
        { script_id: 1, sequence_position: 35, storyboard: 'Mother in brace position in economy class. ', english_subtitle: 'In an emergency, or when you hear “Brace” take up the brace position.', foreign_subtitle_1: '喺緊急情況下或者聽見‘Brace緊迫用力‘ 嘅時候，立即做保護姿勢。', foreign_subtitle_2: '在緊急情況下, 或者當您聽到指令‘Brace, 緊迫用力’ 的時候, 立刻做防衝撞姿勢。' },
        { script_id: 1, sequence_position: 36, storyboard: 'Safety Instruction card spirals out of seatback pocket.', english_subtitle: 'Please read the safety card', foreign_subtitle_1: '每個椅袋內都有一張安全說明書,', foreign_subtitle_2: '請參考前座椅袋中' },
        { script_id: 1, sequence_position: 37, storyboard: 'Open HX Safety Card', english_subtitle: 'in the seat pocket in front of you.', foreign_subtitle_1: '以供乘客參考。', foreign_subtitle_2: '的安全說明書。' },
        { script_id: 1, sequence_position: 38, storyboard: 'No Visual', english_subtitle: 'Should you have any enquiries, please contact one of the Cabin Crew.', foreign_subtitle_1: '如果閣下對以上嘅安全示範有任何查詢, 請聯絡乘務員.', foreign_subtitle_2: '如閣下對以上之安全示範有任何查詢, 請聯絡乘務員。' },
        { script_id: 1, sequence_position: 39, storyboard: 'Take off ready', english_subtitle: 'We will soon be taking off. Please ensure that your hand baggage and tables are stowed, seat backs are upright and your seatbelt is fastened.', foreign_subtitle_1: '我哋即將起飛, 請各位將手提行李, 摺檯妥為收好, 將椅背拉直並且扣好安全帶。', foreign_subtitle_2: '我們即將起飛, 請確保您的手提行李, 桌子已經收好, 椅背豎直, 安全帶扣好。' },
        { script_id: 1, sequence_position: 40, storyboard: 'HX logo ', english_subtitle: 'Thank you for your attention and we wish you a pleasant flight. ', foreign_subtitle_1: '多謝各位乘客嘅留意, 謹祝閣下有一個愉快嘅旅程。', foreign_subtitle_2: '謝謝您的留意, 祝您旅途偷快！' }
    ]
)

LifeJacketAge.create(
    [
        {
            age: 'Adult'
        },
        {
            age: 'Child'
        },
        {
            age: 'Infant'
        }
    ]
)

LifeJacket.create(
    [
        {
            name: 'KSE-35L8',
            manufacturer: 'LSI',
            life_jacket_age_id: '1'
        },
        {
            name: 'KSD-35L8',
            manufacturer: 'LSI',
            life_jacket_age_id: '1'
        }
    ]
)

SeatClass.create(
    [
        {
            name: 'Economy'
        },
        {
            name: 'Business'
        },
        {
            name: 'First'
        }
    ]
)

SeatManufacturer.create(
    [
        {
            name: 'Recaro'
        },
        {
            name: 'ZIM Flugsitz GmbH'
        },
        {
            name: 'EADS Sogerma'
        },
        {
            name: 'Aviointeriors'
        },
        {
            name: 'Thompson Aero Seating'
        },
        {
            name: 'European Aviation'
        },
        {
            name: 'Zodiac Seats U.S.'
        }
    ]
)

SeatLayout.create(
    [
        {
            name: '3-3'
        },
        {
            name: '2-2'
        },
        {
            name: '3-2-3'
        },
        {
            name: '2-1'
        }
    ]
)
