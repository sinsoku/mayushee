class Commitment < ActiveRecord::Base
  belongs_to :user
  belongs_to :sprint
  attr_accessible :level
end
