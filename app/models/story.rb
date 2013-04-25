class Story < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  has_many :plannings, dependent: :destroy
  belongs_to :project
end
