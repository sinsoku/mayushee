class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|
      t.references :user
      t.references :sprint
      t.float :level

      t.timestamps
    end
    add_index :commitments, :user_id
    add_index :commitments, :sprint_id
  end
end
