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

ActiveRecord::Schema.define(version: 20160329201842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "credits", force: :cascade do |t|
    t.decimal "tax_credit"
    t.decimal "srec_credit"
    t.integer "user_id",     null: false
  end

  create_table "queries", force: :cascade do |t|
    t.decimal  "kwh_rate",                    null: false
    t.decimal  "kwh_credit",                  null: false
    t.decimal  "kwh_generated",               null: false
    t.decimal  "consumed",                    null: false
    t.decimal  "sent_to_grid",                null: false
    t.decimal  "savings_consumed",            null: false
    t.decimal  "credit_grid",                 null: false
    t.decimal  "savings_before_distribution", null: false
    t.decimal  "distribution_charge",         null: false
    t.decimal  "total_savings",               null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id",                     null: false
    t.date     "start_date",                  null: false
    t.date     "end_date",                    null: false
  end

  create_table "totals", force: :cascade do |t|
    t.decimal  "kwh_generated",               default: 0.0, null: false
    t.decimal  "kwh_consumed",                default: 0.0, null: false
    t.decimal  "savings_consumed",            default: 0.0, null: false
    t.decimal  "sent_to_grid",                default: 0.0, null: false
    t.decimal  "credit_grid",                 default: 0.0, null: false
    t.decimal  "savings_before_distribution", default: 0.0, null: false
    t.decimal  "distribution_charge",         default: 0.0, null: false
    t.decimal  "total_savings",               default: 0.0, null: false
    t.integer  "user_id",                                   null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",  null: false
    t.string   "encrypted_password",     default: "",  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "first_name",                           null: false
    t.string   "last_name",                            null: false
    t.integer  "site_id",                              null: false
    t.decimal  "initial_investment",                   null: false
    t.decimal  "return_on_investment",   default: 0.0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
