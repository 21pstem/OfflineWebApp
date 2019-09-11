# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#user 1 record for group 1
g_u_1 = GroupsUser.create(
  year_id: 1,
  semester: '1',
  school_id: 1,
  grade: '1',
  group_id: 1,
  user_id: 1,
  user_roles: 'evaluator',
  active: true
)

#user 1 record for group 2
g_u_2 = GroupsUser.create(
  year_id: 1,
  semester: '1',
  school_id: 1,
  grade: '1',
  group_id: 2,
  user_id: 1,
  user_roles: 'evaluator',
  active: true
)

#user 1 record for group 23 (with no associated GroupsEval)
GroupsUser.create(
  year_id: 1,
  semester: '1',
  school_id: 1,
  grade: '2',
  group_id: 23,
  user_id: 1,
  user_roles: 'evaluator',
  active: true
)

#user 1 record for group 24 (with no associated GroupsEval)
GroupsUser.create(
  year_id: 1,
  semester: '1',
  school_id: 1,
  grade: '2',
  group_id: 24,
  user_id: 1,
  user_roles: 'evaluator',
  active: true
)

GroupsEval.create(
  year_id: 1,
  semester: '1',
  school_id: 1,
  grade: '1',
  group_id: 1,
  evaluator_user_id: 1,
  evaluator_group_user_id: g_u_1.id,
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
  poster_summary_comments: 'H',
  rejected: false,
  active: true
)

GroupsEval.create(
  year_id: 1,
  semester: '1',
  school_id: 1,
  grade: '2',
  group_id: 2,
  evaluator_user_id: 1,
  evaluator_group_user_id: g_u_2.id,
  portf_plan_rating: 'P',
  portf_analysis_rating: 'P',
  proto_title: 'P',
  proto_rating: 'H',
  poster_abstract_rating: 'P',
  poster_intro_abstr_rating: 'P',
  poster_mat_meth_rating: 'H',
  poster_results_rating: 'H',
  poster_discussion_rating: 'H',
  poster_citation_rating: 'H',
  poster_design_rating: 'P',
  poster_summary_comments: 'H',
  rejected: false,
  active: true
)
