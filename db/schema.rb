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

ActiveRecord::Schema.define(version: 20160928142636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachement"
    t.string   "image_id"
    t.boolean  "visible",           default: false
    t.jsonb    "name_translations", default: {},    null: false
  end

  add_index "categories", ["name_translations"], name: "index_categories_on_name_translations", using: :gin
  add_index "categories", ["parent_id"], name: "index_categories_on_parent_id", using: :btree

  create_table "galleries", force: :cascade do |t|
    t.jsonb    "name_translations",        default: {}, null: false
    t.jsonb    "description_translations", default: {}, null: false
    t.integer  "category_id"
    t.integer  "product_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "galleries", ["description_translations"], name: "index_galleries_on_description_translations", using: :gin
  add_index "galleries", ["name_translations"], name: "index_galleries_on_name_translations", using: :gin

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.jsonb    "description_translations", default: {}, null: false
    t.string   "attachement"
    t.string   "file_id"
    t.integer  "gallery_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "category_id"
  end

  add_index "images", ["description_translations"], name: "index_images_on_description_translations", using: :gin
  add_index "images", ["gallery_id"], name: "index_images_on_gallery_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.boolean  "is_admin",               default: false
    t.boolean  "is_moderator",           default: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.uuid     "temporary"
    t.string   "cell"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "identities", "users"
  add_foreign_key "identities", "users", name: "identities_user_id_fk"
  add_foreign_key "images", "galleries"
end
