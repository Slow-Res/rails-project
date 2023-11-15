# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_11_15_110344) do

  create_table "announcements", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id", null: false
    t.integer "announcements_id"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["announcements_id"], name: "index_announcements_on_announcements_id"
    t.index ["course_id"], name: "index_announcements_on_course_id"
    t.index ["user_id"], name: "index_announcements_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "code", null: false
    t.integer "status", default: 0
    t.integer "capacity"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.integer "role", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_enrollments_on_course_id"
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.date "date_of_birth"
    t.string "address"
    t.string "city"
    t.string "country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "announcements", "announcements", column: "announcements_id"
  add_foreign_key "announcements", "courses"
  add_foreign_key "announcements", "users"
  add_foreign_key "enrollments", "courses"
  add_foreign_key "enrollments", "users"
end
