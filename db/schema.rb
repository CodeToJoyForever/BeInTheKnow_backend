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

ActiveRecord::Schema.define(version: 2019_08_11_192746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "borrows", id: :serial, force: :cascade do |t|
    t.integer "lender_id"
    t.integer "recipient_id"
    t.integer "item_id"
    t.integer "days_borrowed", default: 1
    t.integer "reminders_sent", default: 0
    t.boolean "returned", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_borrows_on_item_id"
    t.index ["lender_id"], name: "index_borrows_on_lender_id"
    t.index ["recipient_id"], name: "index_borrows_on_recipient_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "admin_id"
    t.date "deadline_date"
    t.time "deadline_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lenders", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_lenders_on_email", unique: true
    t.index ["reset_password_token"], name: "index_lenders_on_reset_password_token", unique: true
  end

  create_table "recipients", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.decimal "points_awarded", precision: 30, scale: 2, default: "0.0"
    t.integer "event_id"
    t.integer "admin_id"
    t.date "deadline_date"
    t.time "deadline_time"
    t.integer "max_participants", default: 1
    t.boolean "group_task", default: false
    t.datetime "user_completed_at"
    t.datetime "admin_confirmed_completion_at"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_tasks_on_event_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
    t.boolean "admin_user", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "provider"
    t.string "first_name"
    t.string "last_name"
    t.string "telephone_num"
    t.string "address"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.decimal "total_points", precision: 30, scale: 2, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
