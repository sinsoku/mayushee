class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.text :description
      t.integer :storypoints
      t.integer :importance
      t.references :project

      t.timestamps
    end
    add_index :stories, :project_id
  end
end
