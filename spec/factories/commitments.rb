# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :commitment do
    user nil
    sprint nil
    level 1.5
  end
end
