class Sprint < ActiveRecord::Base
  belongs_to :project
  attr_accessible :demo_meeting, :estimated_focus_factor, :finish_on, :number_of_workdays, :retrospective_meeting, :retrospective_report, :scrum_meeting, :start_on
end
