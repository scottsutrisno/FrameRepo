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

ActiveRecord::Schema.define(version: 2018_06_02_202919) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "review_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.integer "user_id"
    t.string "url"
    t.string "name"
    t.integer "language_id"
    t.string "developed_by"
    t.boolean "live"
    t.boolean "reviewed", default: false
    t.datetime "last_updated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fw_type"
  end

  create_table "review_ratings", force: :cascade do |t|
    t.integer "review_id"
    t.integer "user_id"
    t.integer "thumbs_up"
    t.integer "thumbs_down"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "package_id"
    t.integer "overall_rating"
    t.integer "saved_time", default: 0
    t.integer "cool_design", default: 0
    t.integer "advanced_features", default: 0
    t.integer "hard_customize", default: 0
    t.integer "many_files", default: 0
    t.integer "bad_navigation", default: 0
    t.integer "hard_to_learn", default: 0
    t.integer "more_customize", default: 0
    t.integer "better_docs", default: 0
    t.integer "less_bulky", default: 0
    t.string "pros"
    t.string "cons"
    t.string "general"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.integer "age"
    t.string "occupation"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
