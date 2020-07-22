# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_22_052622) do

  create_table "album_types", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string "nombre"
    t.date "fecha_lanz"
    t.text "descripcion"
    t.integer "num_canciones"
    t.string "discografica"
    t.integer "album_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_type_id"], name: "index_albums_on_album_type_id"
  end

  create_table "albums_artists", force: :cascade do |t|
    t.integer "artist_id_id", null: false
    t.integer "album_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id_id"], name: "index_albums_artists_on_album_id_id"
    t.index ["artist_id_id"], name: "index_albums_artists_on_artist_id_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.date "fecha_ini"
    t.date "fecha_fin"
    t.text "informacion"
    t.integer "location_id", null: false
    t.integer "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_artists_on_location_id"
    t.index ["state_id"], name: "index_artists_on_state_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "nombre"
    t.integer "province_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["province_id"], name: "index_cities_on_province_id"
  end

  create_table "colaborations", force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "song_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_colaborations_on_artist_id"
    t.index ["song_id"], name: "index_colaborations_on_song_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "generates", force: :cascade do |t|
    t.string "song"
    t.string "nombre"
    t.string "descripcion"
    t.string "duracion_sec"
    t.string "album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genre_albums", force: :cascade do |t|
    t.integer "genre_id", null: false
    t.integer "album_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_genre_albums_on_album_id"
    t.index ["genre_id"], name: "index_genre_albums_on_genre_id"
  end

  create_table "genre_artists", force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_genre_artists_on_artist_id"
    t.index ["genre_id"], name: "index_genre_artists_on_genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "city_id", null: false
    t.integer "province_id", null: false
    t.integer "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
    t.index ["country_id"], name: "index_locations_on_country_id"
    t.index ["province_id"], name: "index_locations_on_province_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "nombre"
    t.integer "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_provinces_on_country_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.integer "duracion_sec"
    t.integer "album_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "albums", "album_types"
  add_foreign_key "albums_artists", "album_ids"
  add_foreign_key "albums_artists", "artist_ids"
  add_foreign_key "artists", "locations"
  add_foreign_key "artists", "states"
  add_foreign_key "cities", "provinces"
  add_foreign_key "colaborations", "artists"
  add_foreign_key "colaborations", "songs"
  add_foreign_key "genre_albums", "albums"
  add_foreign_key "genre_albums", "genres"
  add_foreign_key "genre_artists", "artists"
  add_foreign_key "genre_artists", "genres"
  add_foreign_key "locations", "cities"
  add_foreign_key "locations", "countries"
  add_foreign_key "locations", "provinces"
  add_foreign_key "provinces", "countries"
  add_foreign_key "songs", "albums"
end
