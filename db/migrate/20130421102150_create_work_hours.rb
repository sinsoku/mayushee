class CreateWorkHours < ActiveRecord::Migration
  def change
    create_table :work_hours do |t|
      t.integer :hours
      t.references :user
      t.references :task
      t.integer :old_hours_left
      t.date :date_on

      t.timestamps
    end
    add_index :work_hours, :user_id
    add_index :work_hours, :task_id
  end
end
