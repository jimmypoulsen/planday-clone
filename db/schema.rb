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

ActiveRecord::Schema.define(version: 20170921212834) do

  create_table "employee_groups", force: :cascade do |t|
    t.string "name"
    t.integer "min_age"
    t.integer "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_employee_groups_on_organization_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "age"
    t.string "email"
    t.string "password_digest"
    t.integer "organization_id"
    t.integer "employee_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_group_id"], name: "index_employees_on_employee_group_id"
    t.index ["organization_id"], name: "index_employees_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "owner_id"
    t.index ["employee_id"], name: "index_organizations_on_employee_id"
    t.index ["owner_id"], name: "index_organizations_on_owner_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.integer "organization_id"
    t.integer "employee_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_group_id"], name: "index_places_on_employee_group_id"
    t.index ["organization_id"], name: "index_places_on_organization_id"
  end

  create_table "requests", force: :cascade do |t|
    t.boolean "accepted"
    t.integer "organization_id"
    t.integer "shift_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_requests_on_organization_id"
    t.index ["shift_id"], name: "index_requests_on_shift_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.datetime "time_from"
    t.datetime "time_to"
    t.integer "organization_id"
    t.integer "place_id"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_shifts_on_employee_id"
    t.index ["organization_id"], name: "index_shifts_on_organization_id"
    t.index ["place_id"], name: "index_shifts_on_place_id"
  end

end
