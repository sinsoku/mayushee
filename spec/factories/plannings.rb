# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :planning do
    story nil
    sprint nil
    original_estimation 1
    unexpected false
  end
end
