class Role < ActiveRecord::Base
  extend Enumerize

  has_many :duties
  has_many :users,    through: :duties
  has_many :projects, through: :duties

  enumerize :name, in: %w[scrum_master product_owner team_member]
end
