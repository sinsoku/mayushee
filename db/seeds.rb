require 'factory_girl'
Dir[Rails.root.join('spec/support/factories/*.rb')].each { |f| require f }

FactoryGirl.create :scrum_master
FactoryGirl.create :product_owner
FactoryGirl.create :team_member
FactoryGirl.create :admin_user
