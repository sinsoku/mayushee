# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    login                 'yoshioka'
    password              'password'
    password_confirmation 'password'
    name                  'Ryoji Yoshioka'
    email                 'yoshioka.ryoji@gmail.com'
    role                  'develop'
    factory :admin_user do
      role 'admin'
    end
  end
end
