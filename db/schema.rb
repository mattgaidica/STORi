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

ActiveRecord::Schema.define(version: 20161219165152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annotations", force: :cascade do |t|
    t.integer  "source_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["source_id"], name: "index_annotations_on_source_id", using: :btree
  end

  create_table "keywords", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_keywords_on_user_id", using: :btree
  end

  create_table "source_keywords", force: :cascade do |t|
    t.integer  "source_id"
    t.integer  "keyword_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["keyword_id"], name: "index_source_keywords_on_keyword_id", using: :btree
    t.index ["source_id"], name: "index_source_keywords_on_source_id", using: :btree
  end

  create_table "sources", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "image"
    t.string   "doi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sources_on_user_id", using: :btree
  end

  create_table "synonyms", force: :cascade do |t|
    t.integer  "keyword_1_id"
    t.integer  "keyword_2_id"
    t.float    "strength"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "annotations", "sources"
  add_foreign_key "keywords", "users"
  add_foreign_key "source_keywords", "keywords"
  add_foreign_key "source_keywords", "sources"
  add_foreign_key "sources", "users"
end
