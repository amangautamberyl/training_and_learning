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

ActiveRecord::Schema.define(version: 20161207054259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "head_office"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "buyers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact_num"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customer_mobiles", force: :cascade do |t|
    t.integer  "mobile_id"
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.integer  "payment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.datetime "date_of_joining"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "payment_mode"
    t.string   "payment_details"
    t.integer  "price"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "mobiles", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "imei_code"
    t.integer  "inventory"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "brand_id"
    t.datetime "manufacturing_date"
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customer_mobiles", "buyers"
  add_foreign_key "customer_mobiles", "invoices", column: "payment_id"
  add_foreign_key "customer_mobiles", "mobiles"
  add_foreign_key "customer_mobiles", "sellers"
  add_foreign_key "mobiles", "brands"
end
