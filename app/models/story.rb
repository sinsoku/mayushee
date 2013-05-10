class Story < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  has_many :plannings, dependent: :destroy
  belongs_to :project

  def hours_left
    self.tasks.empty? ? 0 : self.tasks.map(&:hours_left).sum
  end
end
