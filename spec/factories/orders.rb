# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    name "MyString"
    airline_id 1
    aeroplane_id 1
    safety_card_id 1
    seat_layout_id 1
  end
end
