# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    login                 'admin'
    password              'changeme'
    password_confirmation 'changeme'
    name                  'Administrator'
    email                 'admin@example.com'
    role                  'admin'
    factory :admin_user do
      role 'admin'
    end
  end
end
