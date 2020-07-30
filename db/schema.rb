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

ActiveRecord::Schema.define(version: 2020_07_30_202535) do

  create_table "ability_scores", force: :cascade do |t|
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.integer "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_ability_scores_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "player_name"
    t.string "ancestry_and_heritage"
    t.string "background"
    t.string "character_class"
    t.string "size"
    t.string "alignment"
    t.string "traits"
    t.string "deity"
    t.integer "level"
    t.integer "hero_points"
    t.integer "experience_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ability_scores", "characters"
end
