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

ActiveRecord::Schema.define(version: 20161217033720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bowl_games", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "bowl_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bowl_id"], name: "index_bowl_games_on_bowl_id", using: :btree
    t.index ["team_id"], name: "index_bowl_games_on_team_id", using: :btree
  end

  create_table "bowl_results", force: :cascade do |t|
    t.integer  "bowl_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bowl_id"], name: "index_bowl_results_on_bowl_id", using: :btree
    t.index ["team_id"], name: "index_bowl_results_on_team_id", using: :btree
  end

  create_table "bowls", force: :cascade do |t|
    t.string   "name"
    t.integer  "points"
    t.date     "game_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "predictions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bowl_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bowl_id"], name: "index_predictions_on_bowl_id", using: :btree
    t.index ["team_id"], name: "index_predictions_on_team_id", using: :btree
    t.index ["user_id"], name: "index_predictions_on_user_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "team_record"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "score",                  default: 0
    t.integer  "correct",                default: 0
    t.integer  "wrong",                  default: 0
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bowl_games", "bowls"
  add_foreign_key "bowl_games", "teams"
  add_foreign_key "bowl_results", "bowls"
  add_foreign_key "bowl_results", "teams"
  add_foreign_key "predictions", "bowls"
  add_foreign_key "predictions", "teams"
  add_foreign_key "predictions", "users"
end
