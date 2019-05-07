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

ActiveRecord::Schema.define(version: 2019_05_07_150153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "malones", force: :cascade do |t|
    t.string "image_url"
    t.string "top_text"
    t.string "bottom_text"
    t.string "mask_color"
    t.bigint "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_malones_on_creator_id"
  end

  create_table "postups", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "malone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["malone_id"], name: "index_postups_on_malone_id"
    t.index ["user_id"], name: "index_postups_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "malone_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["malone_id"], name: "index_taggings_on_malone_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
