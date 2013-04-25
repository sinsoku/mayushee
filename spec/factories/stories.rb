# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    name "MyString"
    description "MyText"
    storypoints 1
    importance 1
    project nil
  end
end
