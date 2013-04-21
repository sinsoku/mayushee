# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :work_hour do
    hours 1
    user nil
    task nil
    old_hours_left 1
    date_on "2013-04-21"
  end
end
