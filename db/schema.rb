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

ActiveRecord::Schema.define(version: 2019_10_26_162754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", id: :serial, force: :cascade do |t|
    t.integer "game_id"
    t.integer "game_company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_company_id"], name: "index_developers_on_game_company_id"
    t.index ["game_id"], name: "index_developers_on_game_id"
  end

  create_table "favorites", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_favorites_on_movie_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "game_companies", id: :serial, force: :cascade do |t|
    t.integer "igdb_company_id"
    t.string "name"
    t.string "company_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_favorites", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_favorites_on_game_id"
    t.index ["user_id"], name: "index_game_favorites_on_user_id"
  end

  create_table "game_genre_lists", id: :serial, force: :cascade do |t|
    t.integer "igdb_genre_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_genres", id: :serial, force: :cascade do |t|
    t.integer "game_genre_list_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_genre_list_id"], name: "index_game_genres_on_game_genre_list_id"
    t.index ["game_id"], name: "index_game_genres_on_game_id"
  end

  create_table "games", id: :serial, force: :cascade do |t|
    t.bigint "upc"
    t.string "title"
    t.string "description"
    t.integer "created_by_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "game_image_url"
    t.string "console_type"
    t.string "brand"
    t.string "release_date"
    t.integer "igdb_id"
  end

  create_table "genres", id: :serial, force: :cascade do |t|
    t.integer "tmdb_genre_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_casts", id: :serial, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "person_id"
    t.string "character"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_casts_on_movie_id"
    t.index ["person_id"], name: "index_movie_casts_on_person_id"
  end

  create_table "movie_crews", id: :serial, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "person_id"
    t.string "department"
    t.string "job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_crews_on_movie_id"
    t.index ["person_id"], name: "index_movie_crews_on_person_id"
  end

  create_table "movie_genres", id: :serial, force: :cascade do |t|
    t.integer "genre_id"
    t.integer "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_movie_genres_on_genre_id"
    t.index ["movie_id"], name: "index_movie_genres_on_movie_id"
  end

  create_table "movies", id: :serial, force: :cascade do |t|
    t.string "title"
    t.integer "tmdb_id"
    t.string "description"
    t.string "release_date"
    t.integer "runtime"
    t.string "tagline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "movie_image_url"
  end

  create_table "owners", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "upc"
    t.text "image_data"
    t.index ["movie_id"], name: "index_owners_on_movie_id"
    t.index ["user_id"], name: "index_owners_on_user_id"
  end

  create_table "people", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "tmdb_people_id"
    t.string "biography"
    t.string "birthday"
    t.string "deathday"
    t.string "place_of_birth"
    t.string "profile_path_url"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tv_casts", id: :serial, force: :cascade do |t|
    t.integer "tv_season_id"
    t.integer "person_id"
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_tv_casts_on_person_id"
    t.index ["tv_season_id"], name: "index_tv_casts_on_tv_season_id"
  end

  create_table "tv_creators", id: :serial, force: :cascade do |t|
    t.integer "tv_show_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_tv_creators_on_person_id"
    t.index ["tv_show_id"], name: "index_tv_creators_on_tv_show_id"
  end

  create_table "tv_episodes", id: :serial, force: :cascade do |t|
    t.string "title"
    t.integer "tmdb_episode_id"
    t.string "description"
    t.string "air_date"
    t.integer "episode_number"
    t.integer "season_number"
    t.string "episode_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tv_season_id"
    t.index ["tv_season_id"], name: "index_tv_episodes_on_tv_season_id"
  end

  create_table "tv_favorites", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "tv_show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tv_show_id"], name: "index_tv_favorites_on_tv_show_id"
    t.index ["user_id"], name: "index_tv_favorites_on_user_id"
  end

  create_table "tv_genres", id: :serial, force: :cascade do |t|
    t.integer "genre_id"
    t.integer "tv_show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_tv_genres_on_genre_id"
    t.index ["tv_show_id"], name: "index_tv_genres_on_tv_show_id"
  end

  create_table "tv_guest_stars", id: :serial, force: :cascade do |t|
    t.integer "tv_episode_id"
    t.integer "person_id"
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_tv_guest_stars_on_person_id"
    t.index ["tv_episode_id"], name: "index_tv_guest_stars_on_tv_episode_id"
  end

  create_table "tv_owners", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tv_episode_id"
    t.boolean "watched"
    t.index ["tv_episode_id"], name: "index_tv_owners_on_tv_episode_id"
    t.index ["user_id"], name: "index_tv_owners_on_user_id"
  end

  create_table "tv_seasons", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "tmdb_season_id"
    t.integer "tv_show_id"
    t.string "overview"
    t.string "air_date"
    t.integer "season_number"
    t.string "season_poster_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tv_show_id"], name: "index_tv_seasons_on_tv_show_id"
  end

  create_table "tv_shows", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "tmdb_show_id"
    t.string "overview"
    t.string "first_air_date"
    t.string "last_air_date"
    t.integer "number_of_seasons"
    t.integer "number_of_episodes"
    t.string "show_poster_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid"
  end

  add_foreign_key "developers", "game_companies"
  add_foreign_key "developers", "games"
  add_foreign_key "favorites", "movies"
  add_foreign_key "favorites", "users"
  add_foreign_key "game_favorites", "games"
  add_foreign_key "game_favorites", "users"
  add_foreign_key "game_genres", "game_genre_lists"
  add_foreign_key "game_genres", "games"
  add_foreign_key "movie_casts", "movies"
  add_foreign_key "movie_casts", "people"
  add_foreign_key "movie_crews", "movies"
  add_foreign_key "movie_crews", "people"
  add_foreign_key "movie_genres", "genres"
  add_foreign_key "movie_genres", "movies"
  add_foreign_key "owners", "movies"
  add_foreign_key "owners", "users"
  add_foreign_key "tv_casts", "people"
  add_foreign_key "tv_casts", "tv_seasons"
  add_foreign_key "tv_creators", "people"
  add_foreign_key "tv_creators", "tv_shows"
  add_foreign_key "tv_episodes", "tv_seasons"
  add_foreign_key "tv_favorites", "tv_shows"
  add_foreign_key "tv_favorites", "users"
  add_foreign_key "tv_genres", "genres"
  add_foreign_key "tv_genres", "tv_shows"
  add_foreign_key "tv_guest_stars", "people"
  add_foreign_key "tv_guest_stars", "tv_episodes"
  add_foreign_key "tv_owners", "tv_episodes"
  add_foreign_key "tv_owners", "users"
  add_foreign_key "tv_seasons", "tv_shows"
end
