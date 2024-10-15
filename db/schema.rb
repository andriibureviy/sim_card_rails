# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_15_095247) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "numbers", id: :serial, force: :cascade do |t|
    t.string "number"
    t.integer "user_id"
    t.datetime "created_at", precision: nil
    t.string "email"
    t.datetime "expire_at"

    t.unique_constraint ["number"], name: "numbers_number_key"
  end

  create_table "numbers_platforms", id: false, force: :cascade do |t|
    t.bigint "number_id", null: false
    t.bigint "platform_id", null: false
    t.index ["number_id", "platform_id"], name: "index_numbers_platforms_on_number_id_and_platform_id", unique: true
    t.index ["number_id"], name: "index_numbers_platforms_on_number_id"
    t.index ["platform_id"], name: "index_numbers_platforms_on_platform_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "text_code", null: false
    t.string "ref_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["text_code"], name: "index_platforms_on_text_code", unique: true
  end

  add_foreign_key "numbers_platforms", "numbers"
  add_foreign_key "numbers_platforms", "platforms"
end
