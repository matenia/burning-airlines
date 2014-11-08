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

ActiveRecord::Schema.define(version: 20141108002326) do

  create_table "flights", force: true do |t|
    t.string   "flight_number"
    t.string   "origin"
    t.string   "destination"
    t.datetime "date"
    t.integer  "plane_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "flight_id"
  end

  create_table "planes", force: true do |t|
    t.string   "name"
    t.integer  "rows"
    t.integer  "columns"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "flight_id"
    t.integer  "user_id"
    t.integer  "rows"
    t.integer  "columns"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
