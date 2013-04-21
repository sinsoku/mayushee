class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.date :start_on
      t.date :finish_on
      t.integer :number_of_workdays
      t.string :demo_meeting
      t.string :scrum_meeting
      t.string :retrospective_meeting
      t.float :estimated_focus_factor
      t.text :retrospective_report
      t.references :project

      t.timestamps
    end
    add_index :sprints, :project_id
  end
end
