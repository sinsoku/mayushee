class CreatePlannings < ActiveRecord::Migration
  def change
    create_table :plannings do |t|
      t.references :story
      t.references :sprint
      t.integer :original_estimation
      t.boolean :unexpected

      t.timestamps
    end
    add_index :plannings, :story_id
    add_index :plannings, :sprint_id
  end
end
