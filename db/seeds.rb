# require 'factory_girl'
# Dir[Rails.root.join('spec/support/factories/*.rb')].each { |f| require f }
# FactoryGirl.create :scrum_master
# FactoryGirl.create :product_owner
# FactoryGirl.create :team_member
# FactoryGirl.create :admin_user
Role.create name: "scrum_master",  unique: true
Role.create name: "product_owner", unique: true
Role.create name: "team_member",   unique: false
User.create login: 'admin', password: 'changeme', password_confirmation: 'changeme',
  name: 'Administrator', email: 'admin@example.com', role: 'admin'
