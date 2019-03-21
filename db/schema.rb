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

ActiveRecord::Schema.define(version: 2019_03_21_063640) do

  create_table "connection_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["status"], name: "index_connection_statuses_on_status", unique: true
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_groups_on_name", unique: true
  end

  create_table "user_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_user_types_on_type", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "public_key"
    t.integer "group_id"
    t.integer "connection_status_id"
    t.integer "user_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["connection_status_id"], name: "index_users_on_connection_status_id"
    t.index ["group_id"], name: "index_users_on_group_id"
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["public_key"], name: "index_users_on_public_key", unique: true
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

end
