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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121201060319) do

  create_table "assignments", :force => true do |t|
    t.string   "name"
    t.datetime "duedate"
    t.integer  "totalpoints"
    t.integer  "course_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "assignments", ["course_id"], :name => "index_assignments_on_course_id"

  create_table "assignments_questions", :id => false, :force => true do |t|
    t.integer  "assignment_id"
    t.integer  "question_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "assignments_questions", ["assignment_id"], :name => "index_assignments_questions_on_assignment_id"
  add_index "assignments_questions", ["question_id"], :name => "index_assignments_questions_on_question_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "coursenumber"
    t.integer  "year"
    t.string   "semester"
    t.integer  "section"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "courses_users", :id => false, :force => true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questionoptions", :force => true do |t|
    t.string   "option"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "questionoptions", ["question_id"], :name => "index_questionoptions_on_question_id"

  create_table "questions", :force => true do |t|
    t.string   "question"
    t.string   "answer"
    t.string   "hint"
    t.boolean  "mc"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "studentanswers", :force => true do |t|
    t.integer  "qid"
    t.string   "answer"
    t.integer  "pointsreceived"
    t.boolean  "graded"
    t.integer  "submission_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "studentanswers", ["submission_id"], :name => "index_studentanswers_on_submission_id"

  create_table "submissions", :force => true do |t|
    t.boolean  "completionstatus"
    t.integer  "pointsreceived"
    t.integer  "assignment_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "submissions", ["assignment_id"], :name => "index_submissions_on_assignment_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "usertype"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "users_assignments_submissions", :force => true do |t|
    t.integer  "assignment_id"
    t.integer  "submission_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "users_assignments_submissions", ["assignment_id"], :name => "index_users_assignments_submissions_on_assignment_id"
  add_index "users_assignments_submissions", ["submission_id"], :name => "index_users_assignments_submissions_on_submission_id"
  add_index "users_assignments_submissions", ["user_id"], :name => "index_users_assignments_submissions_on_user_id"

end
