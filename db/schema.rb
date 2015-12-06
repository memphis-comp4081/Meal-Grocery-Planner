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
ActiveRecord::Schema.define(version: 20151130154941) do
=======
ActiveRecord::Schema.define(version: 20151118070811) do
>>>>>>> 9753d6b4dee13ffd26efbe066a9b573cfe4b0600

  create_table "components", force: :cascade do |t|
    t.string   "description"
    t.string   "instructions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "meal_id"
<<<<<<< HEAD
    t.string   "image"
=======
>>>>>>> 9753d6b4dee13ffd26efbe066a9b573cfe4b0600
  end

  add_index "components", ["meal_id"], name: "index_components_on_meal_id"

  create_table "components_ingredients", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "ingredient_id"
    t.integer  "component_id"
  end

  add_index "components_ingredients", ["component_id"], name: "index_components_ingredients_on_component_id"
  add_index "components_ingredients", ["ingredient_id"], name: "index_components_ingredients_on_ingredient_id"

<<<<<<< HEAD
  create_table "components_meals", id: false, force: :cascade do |t|
    t.integer "meal_id",      null: false
    t.integer "component_id", null: false
  end

=======
>>>>>>> 9753d6b4dee13ffd26efbe066a9b573cfe4b0600
  create_table "ingredients", force: :cascade do |t|
    t.string   "description"
    t.string   "unit_of_measure"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
<<<<<<< HEAD
    t.string   "image"
=======
>>>>>>> 9753d6b4dee13ffd26efbe066a9b573cfe4b0600
  end

  create_table "meal_lists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.integer  "component_id"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
<<<<<<< HEAD
    t.string   "image"
=======
>>>>>>> 9753d6b4dee13ffd26efbe066a9b573cfe4b0600
  end

  create_table "menus", force: :cascade do |t|
    t.datetime "time"
    t.integer  "meal_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
