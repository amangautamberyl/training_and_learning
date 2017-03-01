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

ActiveRecord::Schema.define(version: 20170116053354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "Name"
    t.string   "Headlocation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "buyers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact_num"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  create_table "cust_mobiles", force: :cascade do |t|
    t.integer  "mses_id"
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.integer  "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_cust_mobiles_on_buyer_id", using: :btree
    t.index ["invoice_id"], name: "index_cust_mobiles_on_invoice_id", using: :btree
    t.index ["mses_id"], name: "index_cust_mobiles_on_mses_id", using: :btree
    t.index ["seller_id"], name: "index_cust_mobiles_on_seller_id", using: :btree
  end

  create_table "image_attachments", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "payment_mode"
    t.string   "payment_details"
    t.decimal  "price"
    t.date     "selling_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "mobiles", force: :cascade do |t|
    t.string   "Name"
    t.integer  "Price"
    t.datetime "manufacturing_date"
    t.integer  "Imei_code"
    t.integer  "brand_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["brand_id"], name: "index_mobiles_on_brand_id", using: :btree
  end

  create_table "mses", force: :cascade do |t|
    t.string   "Name"
    t.integer  "Price"
    t.datetime "manufacturing_date"
    t.integer  "Imei_code"
    t.integer  "Inventory"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "post_attachments", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cust_mobiles", "buyers"
  add_foreign_key "cust_mobiles", "invoices"
  add_foreign_key "cust_mobiles", "mses", column: "mses_id"
  add_foreign_key "cust_mobiles", "sellers"
  add_foreign_key "mobiles", "brands"
end
