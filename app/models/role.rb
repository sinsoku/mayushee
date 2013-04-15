class Role < ActiveRecord::Base
  has_many :duties
  has_many :users,    through: :duties
  has_many :projects, through: :duties
end
