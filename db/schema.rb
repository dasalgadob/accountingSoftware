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

ActiveRecord::Schema.define(version: 20171108214125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer  "grupo_id"
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grupo_id"], name: "index_accounts_on_grupo_id", using: :btree
  end

  create_table "auxiliars", force: :cascade do |t|
    t.integer  "subaccount_id"
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["subaccount_id"], name: "index_auxiliars_on_subaccount_id", using: :btree
  end

  create_table "clases", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.integer  "clase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clase_id"], name: "index_grupos_on_clase_id", using: :btree
  end

  create_table "subaccounts", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_subaccounts_on_account_id", using: :btree
  end

  add_foreign_key "accounts", "grupos"
  add_foreign_key "auxiliars", "subaccounts"
  add_foreign_key "grupos", "clases"
  add_foreign_key "subaccounts", "accounts"
end
