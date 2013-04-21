class Task < ActiveRecord::Base
  belongs_to :story
  attr_accessible :description, :hours_left, :name, :original_estimation
end
