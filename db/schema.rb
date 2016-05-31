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

ActiveRecord::Schema.define(version: 20160531145324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_names", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_names", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "alpha_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specs", force: :cascade do |t|
    t.integer  "company_name_code",     null: false
    t.integer  "car_name_code",         null: false
    t.integer  "car_type_code",         null: false
    t.string   "vehcle_model",          null: false
    t.string   "drive_type",            null: false
    t.integer  "full_length",           null: false
    t.integer  "full_width",            null: false
    t.integer  "full_height",           null: false
    t.integer  "wheel_base",            null: false
    t.integer  "min_ground_clearrance", null: false
    t.integer  "weight",                null: false
    t.integer  "capacity",              null: false
    t.string   "grade",                 null: false
    t.string   "engine_cycle",          null: false
    t.string   "fuel",                  null: false
    t.string   "cylinders_num",         null: false
    t.string   "valve_system",          null: false
    t.integer  "total_displacement",    null: false
    t.integer  "max_output",            null: false
    t.integer  "max_torque",            null: false
    t.integer  "tank_cap",              null: false
    t.string   "trancemission",         null: false
    t.string   "tire_standard",         null: false
    t.float    "fuel_comsumption",      null: false
    t.float    "min_turning_rad",       null: false
    t.integer  "price",                 null: false
    t.string   "appearance_photo",      null: false
    t.string   "driver_seat_photo",     null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer  "spec_id",                null: false
    t.integer  "num",        default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "terms", force: :cascade do |t|
    t.string   "abbrev_name", null: false
    t.string   "formal_name", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
