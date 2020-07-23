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

ActiveRecord::Schema.define(version: 2020_07_23_155831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deals", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.string "dealer"
    t.string "deck_permutation"
    t.boolean "bid_phase"
    t.string "bid_history"
    t.string "contract_content"
    t.boolean "contract_ns"
    t.string "dummy"
    t.string "trick1"
    t.string "trick2"
    t.string "trick3"
    t.string "trick4"
    t.string "trick5"
    t.string "trick6"
    t.string "trick7"
    t.string "trick8"
    t.string "trick9"
    t.string "trick10"
    t.string "trick11"
    t.string "trick12"
    t.string "trick13"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_deals_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "memorable_string_name"
    t.integer "final_score"
    t.boolean "completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_games", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "game_id", null: false
    t.integer "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_player_games_on_game_id"
    t.index ["player_id"], name: "index_player_games_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "country"
  end

  add_foreign_key "deals", "games"
  add_foreign_key "player_games", "games"
  add_foreign_key "player_games", "players"
end
