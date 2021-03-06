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

ActiveRecord::Schema.define(version: 20160628110011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "title",           default: ""
    t.text     "description",     default: ""
    t.integer  "organization_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "status",          default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",           default: ""
    t.text     "description",    default: ""
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "short_name"
    t.string   "website_url"
    t.string   "facebook_url"
    t.string   "twitter_handle"
  end

end
