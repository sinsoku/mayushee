class Story < ActiveRecord::Base
  belongs_to :project
  attr_accessible :description, :importance, :name, :storypoints
end
