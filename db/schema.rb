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

ActiveRecord::Schema[7.0].define(version: 2023_03_29_160658) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diagnoses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialty_diagnoses", force: :cascade do |t|
    t.bigint "specialty_id", null: false
    t.bigint "diagnosis_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diagnosis_id"], name: "index_specialty_diagnoses_on_diagnosis_id"
    t.index ["specialty_id"], name: "index_specialty_diagnoses_on_specialty_id"
  end

  create_table "symptom_diagnoses", force: :cascade do |t|
    t.bigint "symptom_id", null: false
    t.bigint "diagnosis_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diagnosis_id"], name: "index_symptom_diagnoses_on_diagnosis_id"
    t.index ["symptom_id"], name: "index_symptom_diagnoses_on_symptom_id"
  end

  create_table "symptom_records", force: :cascade do |t|
    t.bigint "symptom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["symptom_id"], name: "index_symptom_records_on_symptom_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "specialty_diagnoses", "diagnoses"
  add_foreign_key "specialty_diagnoses", "specialties"
  add_foreign_key "symptom_diagnoses", "diagnoses"
  add_foreign_key "symptom_diagnoses", "symptoms"
  add_foreign_key "symptom_records", "symptoms"
end
