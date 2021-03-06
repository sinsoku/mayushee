class Sprint < ActiveRecord::Base
  belongs_to :project
  has_many :plannings
  has_many :stories, through: :plannings
  has_many :commitments
end
