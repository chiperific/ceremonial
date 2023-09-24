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

ActiveRecord::Schema[7.0].define(version: 2023_08_21_122605) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ceremonies", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.datetime "date_time"
    t.string "rehearsal_requested"
    t.string "planner_or_coordinator"
    t.string "other_services", default: [], array: true
    t.bigint "venue_id"
    t.bigint "primary_spouse_id"
    t.bigint "secondary_spouse_id"
    t.boolean "has_rehearsal", default: false
    t.string "rehearsal_date"
    t.string "rehearsal_time"
    t.datetime "rehearsal_date_time"
    t.bigint "rehearsal_venue_id"
    t.boolean "is_religious", default: true
    t.jsonb "document", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["primary_spouse_id"], name: "index_ceremonies_on_primary_spouse_id"
    t.index ["rehearsal_venue_id"], name: "index_ceremonies_on_rehearsal_venue_id"
    t.index ["secondary_spouse_id"], name: "index_ceremonies_on_secondary_spouse_id"
    t.index ["venue_id"], name: "index_ceremonies_on_venue_id"
  end

  create_table "ceremony_orders", force: :cascade do |t|
    t.bigint "ceremony_id"
    t.bigint "section_id"
    t.bigint "previous_section_id"
    t.bigint "element_id"
    t.bigint "previous_element_id"
    t.index ["ceremony_id"], name: "index_ceremony_orders_on_ceremony_id"
    t.index ["element_id"], name: "index_ceremony_orders_on_element_id"
    t.index ["previous_element_id"], name: "index_ceremony_orders_on_previous_element_id"
    t.index ["previous_section_id"], name: "index_ceremony_orders_on_previous_section_id"
    t.index ["section_id"], name: "index_ceremony_orders_on_section_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.text "text"
    t.string "form_hash_url", null: false
    t.string "field_api_id", null: false
    t.string "field_response", null: false
    t.string "is_default", default: "f"
    t.string "is_religious", default: "f"
    t.bigint "default_previous_element_id"
    t.bigint "default_section_id"
    t.index ["default_previous_element_id"], name: "index_elements_on_default_previous_element_id"
    t.index ["default_section_id"], name: "index_elements_on_default_section_id"
  end

  create_table "entry_maps", force: :cascade do |t|
    t.string "form_hash_url", null: false
    t.string "field_api_id", null: false
    t.string "model_as_string", null: false
    t.string "attribute_as_string", null: false
    t.jsonb "complexity", default: {}, null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string "name"
    t.string "hash_url"
    t.string "name_url"
    t.string "fields_link"
    t.string "entries_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interpolation_maps", force: :cascade do |t|
    t.string "keyword", null: false
    t.string "method_chain", default: [], array: true
  end

  create_table "option_maps", force: :cascade do |t|
    t.string "field_api_id", null: false
    t.string "entry_text", null: false
    t.text "option_text", null: false
    t.boolean "has_nonreligous_variant", default: false
    t.text "nonreligous_variant"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.string "form_hash_url"
    t.string "field_api_id"
    t.string "field_response"
    t.boolean "is_default", default: false
    t.boolean "is_religious", default: false
    t.bigint "default_previous_section_id"
    t.index ["default_previous_section_id"], name: "index_sections_on_default_previous_section_id"
  end

  create_table "spouses", force: :cascade do |t|
    t.string "forename"
    t.string "surname"
    t.string "full_name"
    t.string "preferred_name"
    t.string "email"
    t.string "phone_number"
    t.integer "gender", default: 0
    t.string "nomitive"
    t.string "posessive"
    t.string "declarative"
    t.string "pre_declarative"
    t.string "witness_name"
    t.string "spiritual_statement"
    t.integer "spiritual_level"
    t.jsonb "document", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "address_line_2"
    t.string "city"
    t.string "state", default: "Michigan"
    t.string "zip"
    t.string "phone_number"
    t.string "url"
    t.string "email"
    t.string "contact_name"
    t.string "city_or_county"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ceremonies", "spouses", column: "primary_spouse_id"
  add_foreign_key "ceremonies", "spouses", column: "secondary_spouse_id"
  add_foreign_key "ceremonies", "venues"
  add_foreign_key "ceremonies", "venues", column: "rehearsal_venue_id"
  add_foreign_key "ceremony_orders", "ceremonies"
  add_foreign_key "ceremony_orders", "elements"
  add_foreign_key "ceremony_orders", "elements", column: "previous_element_id"
  add_foreign_key "ceremony_orders", "sections"
  add_foreign_key "ceremony_orders", "sections", column: "previous_section_id"
  add_foreign_key "elements", "elements", column: "default_previous_element_id"
  add_foreign_key "elements", "sections", column: "default_section_id"
  add_foreign_key "sections", "sections", column: "default_previous_section_id"
end
