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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20151114011656) do
=======
ActiveRecord::Schema.define(version: 20151114012602) do
>>>>>>> a06c42ea39cc50ffbdc41c6df1efa04d8dccea72

  create_table "ingredients", force: :cascade do |t|
    t.string   "description"
    t.string   "unit_of_measure"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

<<<<<<< HEAD
  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.integer  "component_id"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
=======
  create_table "meal_lists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.datetime "time"
    t.integer  "meal_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> a06c42ea39cc50ffbdc41c6df1efa04d8dccea72
  end

  create_table "pantries", force: :cascade do |t|
    t.decimal  "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "ingredient_id"
  end

  add_index "pantries", ["ingredient_id"], name: "index_pantries_on_ingredient_id"
  add_index "pantries", ["user_id"], name: "index_pantries_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
