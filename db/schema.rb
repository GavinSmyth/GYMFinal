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

ActiveRecord::Schema.define(version: 2020_03_27_044108) do

  create_table "clients", force: :cascade do |t|
    t.string "Name"
    t.string "PTName"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gym_class_finals", force: :cascade do |t|
    t.integer "personal_trainer_id"
    t.string "Type"
    t.string "PTName"
    t.date "Date"
    t.time "Time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gym_classes", force: :cascade do |t|
    t.string "Type"
    t.string "PTName"
    t.date "Date"
    t.time "Time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.date "week"
    t.integer "weightKG"
    t.integer "weightStone"
    t.integer "weightPounds"
    t.integer "BodyFat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "personal_trainers", force: :cascade do |t|
    t.string "firstName"
    t.string "secondName"
    t.string "desription"
    t.integer "amountOfClients"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "PTName"
    t.string "Description"
    t.integer "AmountOFClients"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "address"
    t.string "ptName"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pt_clients", force: :cascade do |t|
    t.integer "personal_trainer_id"
    t.string "Name"
    t.string "PTName"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "age"
    t.string "address"
    t.string "ptName"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
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

end
