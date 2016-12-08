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

ActiveRecord::Schema.define(version: 20161208130637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "language"
    t.integer  "publication_id"
    t.integer  "actual_copy"
    t.integer  "current_copy"
    t.integer  "dept_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["dept_id"], name: "index_books_on_dept_id", using: :btree
    t.index ["publication_id"], name: "index_books_on_publication_id", using: :btree
  end

  create_table "borrowers", force: :cascade do |t|
    t.integer  "book_id"
    t.date     "issued_date"
    t.date     "return_date"
    t.integer  "staff_id"
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["book_id"], name: "index_borrowers_on_book_id", using: :btree
    t.index ["staff_id"], name: "index_borrowers_on_staff_id", using: :btree
    t.index ["student_id"], name: "index_borrowers_on_student_id", using: :btree
  end

  create_table "depts", force: :cascade do |t|
    t.string   "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string   "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "Name"
    t.string   "Gender"
    t.date     "Date_of_Birth"
    t.integer  "dept_id"
    t.string   "Contact"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["dept_id"], name: "index_students_on_dept_id", using: :btree
  end

  add_foreign_key "books", "depts"
  add_foreign_key "books", "publications"
  add_foreign_key "borrowers", "books"
  add_foreign_key "borrowers", "staffs"
  add_foreign_key "borrowers", "students"
  add_foreign_key "students", "depts"
end
