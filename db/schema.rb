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

ActiveRecord::Schema[7.1].define(version: 2024_04_05_183946) do
  create_table "operations", force: :cascade do |t|
    t.integer "trip_id", null: false
    t.string "recipient_name"
    t.string "sender_name"
    t.string "address"
    t.datetime "operation_time"
    t.string "status"
    t.string "operation_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_operations_on_trip_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.string "start_location"
    t.string "end_location"
    t.decimal "distance"
    t.decimal "duration"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer "route_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.decimal "distance_covered"
    t.decimal "duration"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_trips_on_route_id"
  end

  add_foreign_key "operations", "trips"
  add_foreign_key "trips", "routes"
end
