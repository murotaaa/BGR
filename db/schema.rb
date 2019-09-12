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

ActiveRecord::Schema.define(version: 2019_09_12_044113) do

  create_table "games", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", null: false
    t.string "original_title", null: false
    t.string "designer", null: false
    t.string "image_id", null: false
    t.string "release", null: false
    t.string "player", null: false
    t.string "age", null: false
    t.string "weight", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "game_id", null: false
    t.boolean "excellent", default: false, null: false
    t.boolean "good", default: false, null: false
    t.boolean "fair", default: false, null: false
    t.boolean "not_good", default: false, null: false
    t.boolean "bad", default: false, null: false
    t.boolean "for_kid", default: false, null: false
    t.boolean "for_teen", default: false, null: false
    t.boolean "for_woman", default: false, null: false
    t.boolean "for_man", default: false, null: false
    t.boolean "for_beginner", default: false, null: false
    t.boolean "for_geek", default: false, null: false
    t.boolean "carefully", default: false, null: false
    t.boolean "excitement", default: false, null: false
    t.boolean "two_p_can_enjoy", default: false, null: false
    t.boolean "drunk_can_enjoy", default: false, null: false
    t.boolean "for_singles_party", default: false, null: false
    t.boolean "with_friend_can_enjoy", default: false, null: false
    t.boolean "light_weight", default: false, null: false
    t.boolean "midlle_weight", default: false, null: false
    t.boolean "super_midlle_weight", default: false, null: false
    t.boolean "heavy_weight", default: false, null: false
    t.boolean "super_heavy_weight", default: false, null: false
    t.boolean "dice", default: false, null: false
    t.boolean "butting", default: false, null: false
    t.boolean "action", default: false, null: false
    t.boolean "tile_placement", default: false, null: false
    t.boolean "bluff", default: false, null: false
    t.boolean "hand_management", default: false, null: false
    t.boolean "set_collection", default: false, null: false
    t.boolean "expanded_reproduction", default: false, null: false
    t.boolean "worker_placement", default: false, null: false
    t.boolean "trick_taking", default: false, null: false
    t.boolean "partnership", default: false, null: false
    t.boolean "concealment", default: false, null: false
    t.boolean "drafting", default: false, null: false
    t.boolean "burst", default: false, null: false
    t.boolean "cooperration", default: false, null: false
    t.boolean "negotiation", default: false, null: false
    t.boolean "area_majority", default: false, null: false
    t.boolean "memory", default: false, null: false
    t.boolean "repeat", default: false, null: false
    t.boolean "study", default: false, null: false
    t.boolean "luck", default: false, null: false
    t.boolean "ability", default: false, null: false
    t.boolean "balance", default: false, null: false
    t.boolean "repeat_more_interesting", default: false, null: false
    t.boolean "repeat_not_interesting", default: false, null: false
    t.boolean "only_once", default: false, null: false
    t.boolean "long_waiting_time", default: false, null: false
    t.boolean "easy_rule", default: false, null: false
    t.boolean "easy_to_get", default: false, null: false
    t.boolean "many_expansion", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_tags_on_game_id"
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "watches", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_watches_on_game_id"
    t.index ["user_id"], name: "index_watches_on_user_id"
  end

end
