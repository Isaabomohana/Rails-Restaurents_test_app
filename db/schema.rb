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

ActiveRecord::Schema.define(version: 20170713125653597502) do

  create_table "menus", force: :cascade do |t|
    t.string   "dish_name"
    t.integer  "restaurent_id"
    t.string   "ingredients"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "resturants", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "food"
    t.string   "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "seems_rateable_rates", force: :cascade do |t|
    t.integer  "rater_id"
    t.string   "rateable_type"
    t.integer  "rateable_id"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["dimension"], name: "index_seems_rateable_rates_on_dimension"
    t.index ["rateable_id", "rateable_type"], name: "index_seems_rateable_rates_on_rateable_id_and_rateable_type"
    t.index ["rater_id"], name: "index_seems_rateable_rates_on_rater_id"
  end

end
