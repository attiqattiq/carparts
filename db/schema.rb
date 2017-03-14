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

ActiveRecord::Schema.define(version: 20161216161735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.integer  "bill_id"
    t.integer  "amount"
    t.date     "bill_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "customer_name"
    t.string   "location"
    t.integer  "contact"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "parts", force: :cascade do |t|
    t.integer  "part_id"
    t.string   "part_name"
    t.integer  "part_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "pro_id"
    t.string   "title"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.integer  "status_id"
    t.text     "state"
    t.string   "remarks"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "statuses", ["project_id"], name: "index_statuses_on_project_id", using: :btree

  create_table "suppliers", force: :cascade do |t|
    t.integer  "supplier_id"
    t.string   "supplier_name"
    t.date     "supply_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "bill_id"
    t.integer  "part_id"
    t.integer  "supplier_id"
    t.integer  "pro_id"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "supplies", ["bill_id"], name: "index_supplies_on_bill_id", using: :btree
  add_index "supplies", ["customer_id"], name: "index_supplies_on_customer_id", using: :btree
  add_index "supplies", ["part_id"], name: "index_supplies_on_part_id", using: :btree
  add_index "supplies", ["project_id"], name: "index_supplies_on_project_id", using: :btree
  add_index "supplies", ["supplier_id"], name: "index_supplies_on_supplier_id", using: :btree

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "statuses", "projects"
  add_foreign_key "supplies", "bills"
  add_foreign_key "supplies", "customers"
  add_foreign_key "supplies", "parts"
  add_foreign_key "supplies", "projects"
  add_foreign_key "supplies", "suppliers"
end
