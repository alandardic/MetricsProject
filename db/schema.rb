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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140330164109) do

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.date     "joined_on"
    t.string   "image_file_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metric_unique_names", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metrics", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.string   "mtype"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "time_stamp"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "metrics", ["driver_id"], name: "index_metrics_on_driver_id"

  create_table "reviews", force: true do |t|
    t.string   "name"
    t.integer  "stars"
    t.text     "comment"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["driver_id"], name: "index_reviews_on_driver_id"

end
