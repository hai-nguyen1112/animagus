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

ActiveRecord::Schema.define(version: 2019_03_08_140911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characteristics", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "decr"
    t.integer "incr"
    t.integer "recurrence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "action"
    t.string "action_time"
    t.string "action_status"
    t.integer "interval"
  end

  create_table "pet_characteristics", force: :cascade do |t|
    t.integer "pet_id"
    t.integer "characteristic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "check_time"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "happiness", default: 50
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "active_status", default: "active"
    t.text "bio"
  end

end
