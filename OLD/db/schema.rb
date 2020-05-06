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

ActiveRecord::Schema.define(version: 2020_05_01_195609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beats", force: :cascade do |t|
    t.string "name"
    t.integer "bpm"
    t.string "drumObjs"
  end

  create_table "sample_beats", force: :cascade do |t|
    t.bigint "beats_id"
    t.bigint "samples_id"
    t.index ["beats_id"], name: "index_sample_beats_on_beats_id"
    t.index ["samples_id"], name: "index_sample_beats_on_samples_id"
  end

  create_table "samples", force: :cascade do |t|
    t.string "name"
    t.integer "api_id"
  end

end
