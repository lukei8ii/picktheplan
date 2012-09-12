# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plan do
    start "2012-09-12 03:42:34"
    where "Starbucks"
    what "Drink coffee"
  end
end
