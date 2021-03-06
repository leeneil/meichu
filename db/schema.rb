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

ActiveRecord::Schema.define(:version => 20120301200245) do

  create_table "game_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "title"
    t.integer  "game_type_id", :default => 1
    t.integer  "status_id",    :default => 3
    t.integer  "winner",       :default => 0
    t.integer  "home_id"
    t.string   "venue"
    t.string   "date"
    t.string   "time"
    t.string   "set",          :default => "\345\261\200"
    t.integer  "position",     :default => 0
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "live_url"
  end

  create_table "homes", :force => true do |t|
    t.string   "school"
    t.string   "facebook"
    t.string   "google_plus"
    t.string   "map"
    t.string   "web"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "points", :force => true do |t|
    t.integer  "game_id"
    t.float    "nthu"
    t.float    "nctu"
    t.string   "remark"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reports", :force => true do |t|
    t.integer  "game_id"
    t.string   "set"
    t.integer  "nthu"
    t.integer  "nctu"
    t.string   "remark"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
