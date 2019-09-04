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

ActiveRecord::Schema.define(version: 2019_09_03_235327) do

  create_table "groups_evals", force: :cascade do |t|
    t.integer "year_id", null: false
    t.string "semester", default: "", null: false
    t.integer "school_id"
    t.string "grade", default: "", null: false
    t.integer "group_id"
    t.integer "evaluator_user_id", null: false
    t.integer "evaluator_groups_user_id", null: false
    t.string "portf_plan_rating"
    t.string "portf_analysis_rating"
    t.string "proto_title_rating"
    t.string "proto_rating"
    t.string "poster_abstract_rating"
    t.string "poster_intro_abstr_rating"
    t.string "poster_mat_meth_rating"
    t.string "poster_results_rating"
    t.string "poster_discussion_rating"
    t.string "poster_citation_rating"
    t.string "poster_design_rating"
    t.string "poster_summary_comments"
    t.boolean "invalid", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_users", force: :cascade do |t|
    t.integer "year_id"
    t.string "semester", default: "", null: false
    t.integer "school_id"
    t.string "grade", default: "", null: false
    t.integer "group_id", null: false
    t.integer "user_id", null: false
    t.string "user_role", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
