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

ActiveRecord::Schema.define(version: 20161019031929) do

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "author"
    t.decimal  "price"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "publisher"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.integer  "estb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string  "name"
    t.integer "age"
    t.string  "email"
    t.decimal "salary"
  end

  create_table "emps", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emps", ["company_id"], name: "index_emps_on_company_id"

end
