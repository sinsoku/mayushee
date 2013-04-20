# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :role do
    unique true

    factory :scrum_master do
      name "scrum_master"
    end

    factory :product_owner do
      name "product_owner"
    end

    factory :team_member do
      name "team_member"
      unique false
    end
  end
end
