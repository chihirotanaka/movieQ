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

ActiveRecord::Schema.define(version: 2020_06_20_073719) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.integer "theme_id"
    t.string "title"
    t.text "column"
    t.integer "year", default: 0, null: false
    t.string "theme_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "theme_id"
    t.integer "movie_id"
    t.string "question"
    t.string "emoji"
    t.string "answer"
    t.string "answer2"
    t.string "answer3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "emoji2"
    t.string "emoji3"
  end

  create_table "themes", force: :cascade do |t|
    t.string "theme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unfavorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "uid"
    t.string "provider"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
