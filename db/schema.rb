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

ActiveRecord::Schema.define(version: 20160811042452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.string  "description"
    t.string  "document_id"
    t.string  "category"
    t.string  "year"
    t.string  "month"
    t.string  "day"
    t.text    "client_notes"
    t.text    "attorney_notes"
    t.text    "law_office_notes"
    t.integer "matter_id"
    t.boolean "hot_doc"
    t.string  "issues"
    t.integer "status"
    t.string  "date"
    t.string  "title"
    t.date    "sort_date"
    t.index ["matter_id"], name: "index_documents_on_matter_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string  "headline"
    t.string  "text"
    t.string  "year"
    t.string  "month"
    t.string  "day"
    t.string  "hour"
    t.string  "minute"
    t.string  "caption"
    t.string  "credit"
    t.string  "url"
    t.string  "thumbnail"
    t.integer "matter_id"
    t.index ["matter_id"], name: "index_events_on_matter_id", using: :btree
  end

  create_table "matters", force: :cascade do |t|
    t.string   "cause_number"
    t.string   "court"
    t.string   "issues"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "year"
    t.string   "attorney"
    t.string   "paralegal"
    t.string   "client"
    t.string   "client_id"
    t.string   "opposing_party"
    t.string   "opposing_counsel"
    t.string   "judge"
    t.string   "kind"
    t.string   "status"
    t.string   "casename"
  end

  create_table "oauth_access_grants", force: :cascade do |t|
    t.integer  "resource_owner_id", null: false
    t.integer  "application_id",    null: false
    t.string   "token",             null: false
    t.integer  "expires_in",        null: false
    t.text     "redirect_uri",      null: false
    t.datetime "created_at",        null: false
    t.datetime "revoked_at"
    t.string   "scopes"
    t.index ["token"], name: "index_oauth_access_grants_on_token", unique: true, using: :btree
  end

  create_table "oauth_access_tokens", force: :cascade do |t|
    t.integer  "resource_owner_id"
    t.integer  "application_id"
    t.string   "token",                               null: false
    t.string   "refresh_token"
    t.integer  "expires_in"
    t.datetime "revoked_at"
    t.datetime "created_at",                          null: false
    t.string   "scopes"
    t.string   "previous_refresh_token", default: "", null: false
    t.index ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true, using: :btree
    t.index ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id", using: :btree
    t.index ["token"], name: "index_oauth_access_tokens_on_token", unique: true, using: :btree
  end

  create_table "oauth_applications", force: :cascade do |t|
    t.string   "name",                      null: false
    t.string   "uid",                       null: false
    t.string   "secret",                    null: false
    t.text     "redirect_uri",              null: false
    t.string   "scopes",       default: "", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["uid"], name: "index_oauth_applications_on_uid", unique: true, using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.date    "dob"
    t.string  "gender"
    t.text    "attorney_notes"
    t.text    "client_notes"
    t.text    "law_office_notes"
    t.text    "details"
    t.string  "address1"
    t.string  "address2"
    t.string  "city"
    t.string  "state"
    t.string  "email"
    t.string  "phone"
    t.integer "matter_id"
    t.index ["matter_id"], name: "index_people_on_matter_id", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.string  "photo_id"
    t.string  "caption"
    t.date    "sort_date"
    t.integer "matter_id"
    t.index ["matter_id"], name: "index_photos_on_matter_id", using: :btree
  end

  create_table "refile_attachments", force: :cascade do |t|
    t.integer  "oid",        null: false
    t.string   "namespace",  null: false
    t.datetime "created_at"
    t.index ["namespace"], name: "index_refile_attachments_on_namespace", using: :btree
    t.index ["oid"], name: "index_refile_attachments_on_oid", using: :btree
  end

  create_table "user_matters", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "matter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "casename"
    t.string   "full_name"
    t.index ["matter_id"], name: "index_user_matters_on_matter_id", using: :btree
    t.index ["user_id"], name: "index_user_matters_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "person_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "maiden_name"
    t.string   "gender"
    t.date     "dob"
    t.string   "role"
    t.string   "profile_image_id"
    t.string   "full_name"
  end

  add_foreign_key "documents", "matters"
  add_foreign_key "events", "matters"
  add_foreign_key "oauth_access_grants", "oauth_applications", column: "application_id"
  add_foreign_key "oauth_access_tokens", "oauth_applications", column: "application_id"
  add_foreign_key "people", "matters"
  add_foreign_key "photos", "matters"
  add_foreign_key "user_matters", "matters"
  add_foreign_key "user_matters", "users"
end
