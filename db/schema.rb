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

ActiveRecord::Schema.define(version: 2021_05_25_141602) do

  create_table "child_actors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cruel_aunts", force: :cascade do |t|
    t.string "name"
    t.integer "traumatized_child_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["traumatized_child_id"], name: "index_cruel_aunts_on_traumatized_child_id"
  end

  create_table "hollywoodesque_neuroses", force: :cascade do |t|
    t.string "name"
    t.integer "child_actor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["child_actor_id"], name: "index_hollywoodesque_neuroses_on_child_actor_id"
  end

  create_table "horrifyingly_large_insects", force: :cascade do |t|
    t.string "name"
    t.integer "traumatized_child_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["traumatized_child_id"], name: "index_horrifyingly_large_insects_on_traumatized_child_id"
  end

  create_table "traumatized_children", force: :cascade do |t|
    t.string "name"
    t.integer "child_actor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["child_actor_id"], name: "index_traumatized_children_on_child_actor_id"
  end

  add_foreign_key "cruel_aunts", "traumatized_children"
  add_foreign_key "hollywoodesque_neuroses", "child_actors"
  add_foreign_key "horrifyingly_large_insects", "traumatized_children"
  add_foreign_key "traumatized_children", "child_actors"
end
