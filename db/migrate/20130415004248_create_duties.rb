class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.references :user
      t.references :project
      t.references :role

      t.timestamps
    end
    add_index :duties, :user_id
    add_index :duties, :project_id
    add_index :duties, :role_id
  end
end
