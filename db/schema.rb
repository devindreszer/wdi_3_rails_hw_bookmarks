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

ActiveRecord::Schema.define(version: 20140626213647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: true do |t|
    t.text     "title",       null: false
    t.text     "url",         null: false
    t.text     "comment"
    t.text     "category"
    t.boolean  "is_favorite", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookmarks", ["category"], name: "index_bookmarks_on_category", using: :btree

end
