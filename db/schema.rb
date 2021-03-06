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

ActiveRecord::Schema.define(version: 20161202104447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",       precision: 8, scale: 2
    t.integer  "ship_amount"
    t.integer  "design_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["design_id"], name: "index_course_types_on_design_id", using: :btree
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "course_type_id"
    t.date     "start_date"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["course_type_id"], name: "index_courses_on_course_type_id", using: :btree
  end

  create_table "designs", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: falseD
  end

  create_table "entries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
    t.integer  "user_id"
    t.index ["course_id"], name: "index_entries_on_course_id", using: :btree
    t.index ["user_id"], name: "index_entries_on_user_id", using: :btree
  end

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.boolean  "damaged"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "design_id"
    t.index ["design_id"], name: "index_ships_on_design_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin_role"
    t.boolean  "user_role"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "zip_code"
    t.string   "city"
    t.string   "telephone"
    t.string   "address"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "course_types", "designs"
  add_foreign_key "courses", "course_types"
  add_foreign_key "entries", "courses"
  add_foreign_key "entries", "users"
  add_foreign_key "ships", "designs"
end
