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

ActiveRecord::Schema.define(version: 20160614233610) do

  create_table "airplanes", force: :cascade do |t|
    t.integer  "plane_model"
    t.integer  "rows"
    t.integer  "columns"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "airplane_id"
    t.integer  "flight_number"
    t.date     "departure_date"
    t.text     "origin"
    t.text     "destination"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.text     "seat"
    t.integer  "user_id"
    t.integer  "flight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.text     "password_digest"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
