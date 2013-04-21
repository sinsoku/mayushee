# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130421101757) do

  create_table "commitments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "sprint_id"
    t.float    "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "commitments", ["sprint_id"], :name => "index_commitments_on_sprint_id"
  add_index "commitments", ["user_id"], :name => "index_commitments_on_user_id"

  create_table "duties", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "duties", ["project_id"], :name => "index_duties_on_project_id"
  add_index "duties", ["role_id"], :name => "index_duties_on_role_id"
  add_index "duties", ["user_id"], :name => "index_duties_on_user_id"

  create_table "plannings", :force => true do |t|
    t.integer  "story_id"
    t.integer  "sprint_id"
    t.integer  "original_estimation"
    t.boolean  "unexpected"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "plannings", ["sprint_id"], :name => "index_plannings_on_sprint_id"
  add_index "plannings", ["story_id"], :name => "index_plannings_on_story_id"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.boolean  "unique"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sprints", :force => true do |t|
    t.date     "start_on"
    t.date     "finish_on"
    t.integer  "number_of_workdays"
    t.string   "demo_meeting"
    t.string   "scrum_meeting"
    t.string   "retrospective_meeting"
    t.float    "estimated_focus_factor"
    t.text     "retrospective_report"
    t.integer  "project_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "sprints", ["project_id"], :name => "index_sprints_on_project_id"

  create_table "stories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "storypoints"
    t.integer  "importance"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "stories", ["project_id"], :name => "index_stories_on_project_id"

  create_table "users", :force => true do |t|
    t.string   "login",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "email"
    t.string   "role"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
