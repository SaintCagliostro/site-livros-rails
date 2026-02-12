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

ActiveRecord::Schema[8.1].define(version: 2026_02_12_020636) do
  create_table "abas", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.integer "editora_id", null: false
    t.integer "genero_id", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_abas_on_author_id"
    t.index ["book_id"], name: "index_abas_on_book_id"
    t.index ["editora_id"], name: "index_abas_on_editora_id"
    t.index ["genero_id"], name: "index_abas_on_genero_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.integer "author_id", null: false
    t.boolean "confirmed"
    t.datetime "created_at", null: false
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_accounts_on_author_id"
  end

  create_table "authors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "editoras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "generos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "abas", "authors"
  add_foreign_key "abas", "books"
  add_foreign_key "abas", "editoras"
  add_foreign_key "abas", "generos"
  add_foreign_key "accounts", "authors"
  add_foreign_key "books", "authors"
end
