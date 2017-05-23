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

ActiveRecord::Schema.define(version: 20170523170205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_favorites_on_movie_id", using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "files", force: :cascade do |t|
    t.binary "content"
    t.text   "metadata"
  end

  create_table "games", force: :cascade do |t|
    t.bigint   "upc"
    t.string   "title"
    t.string   "description"
    t.integer  "created_by_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "game_image_url"
    t.string   "console_type"
    t.string   "brand"
    t.text     "image_data"
    t.string   "release_date"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "tmdb_id"
    t.string   "description"
    t.string   "release_date"
    t.bigint   "upc"
    t.integer  "runtime"
    t.string   "tagline"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "movie_image_url"
    t.integer  "created_by_id"
    t.text     "image_data"
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
    t.string   "provider"
    t.string   "uid"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["provider"], name: "index_users_on_provider", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid"], name: "index_users_on_uid", using: :btree
  end

  add_foreign_key "favorites", "movies"
  add_foreign_key "favorites", "users"
end
