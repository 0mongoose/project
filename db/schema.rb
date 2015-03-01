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

ActiveRecord::Schema.define(version: 20150301014339) do

  create_table "questions", force: true do |t|
    t.text     "content"
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "weight"
  end

  create_table "quizzes", force: true do |t|
    t.float    "result"
    t.integer  "no_of_questions"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "student_id"
  end

  create_table "quizzes_questions", force: true do |t|
    t.integer "quiz_id"
    t.integer "question_id"
  end

  create_table "students", force: true do |t|
    t.integer  "level"
    t.float    "time"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students_subjects", force: true do |t|
    t.integer "student_id"
    t.integer "subject_id"
    t.float   "level"
  end

  create_table "students_topics", force: true do |t|
    t.integer "student_id"
    t.integer "topic_id"
    t.float   "level"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: true do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics_questions", force: true do |t|
    t.integer  "topic_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
  end

end
