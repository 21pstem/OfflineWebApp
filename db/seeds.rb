# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
GroupsEval.create(
  year_id: 1,
  semester: '1',
  school_id: 1,
  grade: '1',
  group_id: 1,
  evaluator_user_id: 1,
  evaluator_group_user_id: 1,
  portf_plan_rating: 'H',
  portf_analysis_rating: 'P',
  proto_title: 'N',
  proto_rating: 'H',
  poster_abstract_rating: 'P',
  poster_intro_abstr_rating: 'P',
  poster_mat_meth_rating: 'N',
  poster_results_rating: 'H',
  poster_discussion_rating: 'H',
  poster_citation_rating: 'P',
  poster_design_rating: 'P',
  poster_summary_comments: 'H'
)
