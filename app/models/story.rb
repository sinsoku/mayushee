class Story < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_many :tasks, dependent: :destroy
  has_many :plannings, dependent: :destroy
  belongs_to :project
end
