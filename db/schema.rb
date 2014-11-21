# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141121054103) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "answers", force: true do |t|
    t.text     "textAnswer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "question_id", default: 0, null: false
  end

  create_table "assets", force: true do |t|
    t.string   "storage_uid"
    t.string   "storage_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "storage_width"
    t.integer  "storage_height"
    t.float    "storage_aspect_ratio"
    t.integer  "storage_depth"
    t.string   "storage_format"
    t.string   "storage_mime_type"
    t.string   "storage_size"
  end

  create_table "companies", force: true do |t|
    t.string   "stringName"
    t.string   "stringLocation"
    t.string   "stringIndustry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_types", force: true do |t|
    t.string   "stringJobTypec"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "textQuestion", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id",               default: 0, null: false
    t.integer  "topic_id",                 default: 0, null: false
  end

  create_table "questions_has_companies", force: true do |t|
    t.integer  "question_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions_has_companies", ["company_id"], name: "index_questions_has_companies_on_company_id"
  add_index "questions_has_companies", ["question_id"], name: "index_questions_has_companies_on_question_id"

  create_table "questions_has_topics", force: true do |t|
    t.integer  "question_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions_has_topics", ["question_id"], name: "index_questions_has_topics_on_question_id"
  add_index "questions_has_topics", ["topic_id"], name: "index_questions_has_topics_on_topic_id"

  create_table "rich_rich_files", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        default: "file"
  end

  create_table "topic_has_job_types", force: true do |t|
    t.integer  "topic_id"
    t.integer  "job_types_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topic_has_job_types", ["job_types_id"], name: "index_topic_has_job_types_on_job_types_id"
  add_index "topic_has_job_types", ["topic_id"], name: "index_topic_has_job_types_on_topic_id"

  create_table "topics", force: true do |t|
    t.string   "stringTopic"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "job_types_id", default: 0, null: false
  end

  add_index "topics", ["question_id"], name: "index_topics_on_question_id"

end
