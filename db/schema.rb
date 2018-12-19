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

ActiveRecord::Schema.define(version: 2018_12_19_184020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "synthesizers", force: :cascade do |t|
    t.string "name"
    t.string "creator"
    t.string "oscillator"
    t.float "gain"
    t.float "duration"
    t.float "attackTime"
    t.float "decayTime"
    t.float "sustainTime"
    t.float "sustainLevel"
    t.float "releaseTime"
    t.float "gateTime"
    t.float "peakLevel"
    t.float "epsilon"
    t.string "attackCurve"
    t.string "decayCurve"
    t.string "releaseCurve"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_synthesizers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "synthesizer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "firstName"
    t.string "lastName"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
