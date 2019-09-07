require 'test_helper'
require 'json'

class GroupsEvalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @groups_eval = groups_evals(:one)
  end

  test "should get index" do
    get groups_evals_url
    assert_response :success
  end

  test "should get new" do
    get new_groups_eval_url
    assert_response :success
  end

  test "should create groups_eval" do
    assert_difference('GroupsEval.count') do
      post groups_evals_url, params: { groups_eval: { created_at: @groups_eval.created_at, evaluator_group_user_id: @groups_eval.evaluator_group_user_id, evaluator_user_id: @groups_eval.evaluator_user_id, grade: @groups_eval.grade, group_id: @groups_eval.group_id, rejected: @groups_eval.rejected, portf_analysis_rating: @groups_eval.portf_analysis_rating, portf_plan_rating: @groups_eval.portf_plan_rating, poster_abstract_rating: @groups_eval.poster_abstract_rating, poster_citation_rating: @groups_eval.poster_citation_rating, poster_design_rating: @groups_eval.poster_design_rating, poster_discussion_rating: @groups_eval.poster_discussion_rating, poster_intro_abstr_rating: @groups_eval.poster_intro_abstr_rating, poster_mat_meth_rating: @groups_eval.poster_mat_meth_rating, poster_results_rating: @groups_eval.poster_results_rating, poster_summary_comments: @groups_eval.poster_summary_comments, proto_rating: @groups_eval.proto_rating, proto_title: @groups_eval.proto_title, school_id: @groups_eval.school_id, semester: @groups_eval.semester, updated_at: @groups_eval.updated_at, year_id: @groups_eval.year_id } }
    end

    assert_redirected_to groups_eval_url(GroupsEval.last)
  end

  test "should show groups_eval" do
    get groups_eval_url(@groups_eval)
    assert_response :success
  end

  test "should get edit" do
    get edit_groups_eval_url(@groups_eval)
    assert_response :success
  end

  test "should update groups_eval" do
    patch groups_eval_url(@groups_eval), params: { groups_eval: { created_at: @groups_eval.created_at, evaluator_group_user_id: @groups_eval.evaluator_group_user_id, evaluator_user_id: @groups_eval.evaluator_user_id, grade: @groups_eval.grade, group_id: @groups_eval.group_id, rejected: @groups_eval.rejected, portf_analysis_rating: @groups_eval.portf_analysis_rating, portf_plan_rating: @groups_eval.portf_plan_rating, poster_abstract_rating: @groups_eval.poster_abstract_rating, poster_citation_rating: @groups_eval.poster_citation_rating, poster_design_rating: @groups_eval.poster_design_rating, poster_discussion_rating: @groups_eval.poster_discussion_rating, poster_intro_abstr_rating: @groups_eval.poster_intro_abstr_rating, poster_mat_meth_rating: @groups_eval.poster_mat_meth_rating, poster_results_rating: @groups_eval.poster_results_rating, poster_summary_comments: @groups_eval.poster_summary_comments, proto_rating: @groups_eval.proto_rating, proto_title: @groups_eval.proto_title, school_id: @groups_eval.school_id, semester: @groups_eval.semester, updated_at: @groups_eval.updated_at, year_id: @groups_eval.year_id } }
    assert_redirected_to groups_eval_url(@groups_eval)
  end

  test "should get all groups_evals with evaluator_group_user_id 1" do
    get by_evaluator_groups_evals_url(@groups_eval.evaluator_group_user_id)
    evals = parse_response response.body
    assert_response :success
    assert_equal(Array, evals.class, "by_evaluator test: parsed response body should be an Array of hashes")
    evals.each do |ev|

      assert_equal(@groups_eval.evaluator_group_user_id, ev["evaluator_group_user_id"], "by_evaluator test: ev['evaluator_group_user_id'] should be equal to @groups_eval.evaluator_group_user_id")
    end
  end

  test "should destroy groups_eval" do
    assert_difference('GroupsEval.count', -1) do
      delete groups_eval_url(@groups_eval)
    end

    assert_redirected_to groups_evals_url
  end

  def parse_response (res)
    JSON.parse(res)
  end

end
