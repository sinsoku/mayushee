class Project < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_many :duties
  has_many :projects, through: :users
end
