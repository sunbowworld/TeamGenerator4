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

ActiveRecord::Schema.define(version: 20140103171017) do

  create_table "steam_users", force: true do |t|
    t.string "steam_id_64"
  end

  create_table "steam_users_teams", force: true do |t|
    t.integer "steam_user_id"
    t.integer "team_id"
  end

  create_table "teams", force: true do |t|
    t.string "team_name"
  end

  create_table "versus_informations", force: true do |t|
    t.datetime "versus_at"
    t.integer  "team1_id"
    t.integer  "team1_score"
    t.integer  "team2_id"
    t.integer  "team2_score"
  end

end
