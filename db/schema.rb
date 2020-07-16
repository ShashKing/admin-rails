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

ActiveRecord::Schema.define(version: 2020_07_16_053003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "record_type", limit: 255, null: false
    t.decimal "record_id", null: false
    t.decimal "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "idx_33085_index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "idx_33085_index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", limit: 255, null: false
    t.string "filename", limit: 255, null: false
    t.string "content_type", limit: 255
    t.text "metadata"
    t.decimal "byte_size", null: false
    t.string "checksum", limit: 255, null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "idx_33094_index_active_storage_blobs_on_key", unique: true
  end

  create_table "rate_settings", force: :cascade do |t|
    t.decimal "shop_id"
    t.boolean "enable_delivery", default: false
    t.boolean "carrier_service", default: false
    t.decimal "carrier_service_shopify_id"
    t.string "weight_format", limit: 255
    t.string "currency", limit: 255
    t.string "currency_code", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "idx_33118_index_rate_settings_on_shop_id"
  end

  create_table "rates", force: :cascade do |t|
    t.decimal "shop_id"
    t.string "rate_name", limit: 255
    t.decimal "rate", precision: 10
    t.text "description"
    t.bigint "value_m"
    t.decimal "minimum_weight_value", precision: 10
    t.decimal "maximum_weight_value", precision: 10
    t.decimal "minimum_order_value", precision: 10
    t.decimal "maximum_order_value", precision: 10
    t.text "zone_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id", "rate_name"], name: "idx_33109_index_rates_on_shop_id_and_rate_name", unique: true
    t.index ["shop_id"], name: "idx_33109_index_rates_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "shopify_domain", limit: 255, null: false
    t.string "shopify_token", limit: 255, null: false
    t.decimal "charge_id"
    t.boolean "charge_cancelled", default: false
    t.datetime "trial_ends_on"
    t.datetime "billing_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopify_domain"], name: "idx_33132_index_shops_on_shopify_domain", unique: true
  end

  create_table "store_settings", force: :cascade do |t|
    t.decimal "shop_id"
    t.bigint "logo_height"
    t.bigint "logo_width"
    t.string "address", limit: 255
    t.decimal "vat_number"
    t.decimal "phone"
    t.string "email", limit: 255
    t.decimal "registered_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "idx_33142_index_store_settings_on_shop_id"
  end

  create_table "template_categories", force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "templates", force: :cascade do |t|
    t.string "name", limit: 255
    t.text "body"
    t.boolean "default_template", default: false
    t.boolean "edited", default: false
    t.decimal "shop_id"
    t.decimal "template_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "idx_33151_index_templates_on_shop_id"
    t.index ["template_category_id"], name: "idx_33151_index_templates_on_template_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "idx_33168_index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "idx_33168_index_users_on_reset_password_token", unique: true
  end

  create_table "zones", force: :cascade do |t|
    t.string "zone_name", limit: 255
    t.text "zip_code"
    t.bigint "zone_status", default: 0
    t.decimal "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id", "zone_name"], name: "idx_33179_index_zones_on_shop_id_and_zone_name", unique: true
    t.index ["shop_id"], name: "idx_33179_index_zones_on_shop_id"
  end

end
