class Task < ActiveRecord::Base
  has_many :work_hours, dependent: :destroy
  belongs_to :story

  validates :name, presence: true
  validates :original_estimation, presence: true

  after_validation lambda { |t| t.hours_left ||= t.original_estimation }
end
