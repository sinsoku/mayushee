class Planning < ActiveRecord::Base
  belongs_to :story
  belongs_to :sprint
end
