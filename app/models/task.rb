class Task < ActiveRecord::Base
  has_many :work_hours, dependent: :destroy
  belongs_to :story
end
