# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :startup_job, :class => 'Startup::Job' do
    title "MyString"
    description "MyString"
    salary_min 1
    salary_max 1
    equity_min "9.99"
    equity_max "9.99"
    angellist_url "MyString"
    startup nil
  end
end
