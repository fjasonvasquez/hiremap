# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :startup_office, :class => 'Startup::Office' do
    address1 "MyString"
    address2 "MyString"
    zip_code "MyString"
    city "MyString"
    state_code "MyString"
    country_code "MyString"
    latitude 1.5
    longitude 1.5
  end
end
