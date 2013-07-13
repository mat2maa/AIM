# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    contact_name "MyString"
    address "MyText"
    phone "MyString"
    mobile "MyString"
    fax "MyString"
  end
end
