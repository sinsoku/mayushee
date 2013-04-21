class Project < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_many :duties
  has_many :users, through: :duties
  has_many :sprints
end
