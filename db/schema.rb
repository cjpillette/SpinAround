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

ActiveRecord::Schema.define(version: 20170502042133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compositions", force: :cascade do |t|
    t.integer  "fibre_type_id"
    t.integer  "percent_content"
    t.integer  "yarn_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["fibre_type_id"], name: "index_compositions_on_fibre_type_id", using: :btree
    t.index ["yarn_id"], name: "index_compositions_on_yarn_id", using: :btree
  end

  create_table "fibre_types", force: :cascade do |t|
    t.string   "name"
    t.boolean  "isAnimal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_guild_member"
    t.string   "street_address"
    t.string   "suburb"
    t.string   "postcode"
    t.string   "country"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "skeins", force: :cascade do |t|
    t.decimal  "price"
    t.integer  "spinned_by_id"
    t.integer  "skein_available"
    t.string   "photo_main"
    t.integer  "yarn_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["spinned_by_id"], name: "index_skeins_on_spinned_by_id", using: :btree
    t.index ["yarn_id"], name: "index_skeins_on_yarn_id", using: :btree
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
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "yarns", force: :cascade do |t|
    t.integer  "weight"
    t.integer  "dye"
    t.integer  "spinned_as"
    t.integer  "metrage"
    t.decimal  "diameter"
    t.integer  "ply"
    t.string   "color"
    t.string   "origin"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "compositions", "fibre_types"
  add_foreign_key "compositions", "yarns"
  add_foreign_key "profiles", "users"
  add_foreign_key "skeins", "users", column: "spinned_by_id"
  add_foreign_key "skeins", "yarns"
end
