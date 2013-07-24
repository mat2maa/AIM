# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :scene do
    script_id 1
    sequence_position 1
    storyboard "MyText"
    english_subtitle "MyText"
    foreign_subtitle_1 "MyText"
    foreign_subtitle_2 "MyText"
    remark "MyText"
  end
end
