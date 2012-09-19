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

ActiveRecord::Schema.define(:version => 20120919160131) do

  create_table "charities", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "overall"
    t.decimal  "financial"
    t.decimal  "accountability"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "question_answers", :force => true do |t|
    t.string   "label"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "question_answers", ["question_id"], :name => "index_question_answers_on_question_id"

  create_table "question_groups", :force => true do |t|
    t.string   "label"
    t.string   "group_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.string   "label"
    t.string   "question_type"
    t.integer  "question_group_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "questions", ["question_group_id"], :name => "index_questions_on_question_group_id"

  create_table "survey_answers", :force => true do |t|
    t.integer  "question_group_id"
    t.integer  "question_id"
    t.integer  "question_answer_id"
    t.string   "answer"
    t.integer  "survey_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "survey_answers", ["question_answer_id"], :name => "index_survey_answers_on_question_answer_id"
  add_index "survey_answers", ["question_group_id"], :name => "index_survey_answers_on_question_group_id"
  add_index "survey_answers", ["question_id"], :name => "index_survey_answers_on_question_id"
  add_index "survey_answers", ["survey_id"], :name => "index_survey_answers_on_survey_id"

  create_table "surveys", :force => true do |t|
    t.string   "email_address"
    t.integer  "answer_row"
    t.integer  "answer_column"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
