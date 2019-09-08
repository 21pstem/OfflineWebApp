require 'test_helper'
require 'json'

class GroupEvalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_eval = group_evals(:one)
  end

  test "should get index" do
    get group_evals_url
    assert_response :success
  end

  test "should get new" do
    get new_group_eval_url
    assert_response :success
  end

  test "should create group_eval" do
    assert_difference('GroupEval.count') do
      post group_evals_url, params: { group_eval: { created_at: @group_eval.created_at, evaluator_group_user_id: @group_eval.evaluator_group_user_id, evaluator_user_id: @group_eval.evaluator_user_id, grade: @group_eval.grade, group_id: @group_eval.group_id, invalid: @group_eval.invalid, portf_analysis_rating: @group_eval.portf_analysis_rating, portf_plan_rating: @group_eval.portf_plan_rating, poster_abstract_rating: @group_eval.poster_abstract_rating, poster_citation_rating: @group_eval.poster_citation_rating, poster_design_rating: @group_eval.poster_design_rating, poster_discussion_rating: @group_eval.poster_discussion_rating, poster_intro_abstr_rating: @group_eval.poster_intro_abstr_rating, poster_mat_meth_rating: @group_eval.poster_mat_meth_rating, poster_results_rating: @group_eval.poster_results_rating, poster_summary_comments: @group_eval.poster_summary_comments, proto_rating: @group_eval.proto_rating, proto_title: @group_eval.proto_title, school_id: @group_eval.school_id, semester: @group_eval.semester, updated_at: @group_eval.updated_at, year_id: @group_eval.year_id } }
    end

    assert_redirected_to group_eval_url(GroupEval.last)
  end

  test "should show group_eval" do
    get group_eval_url(@group_eval)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_eval_url(@group_eval)
    assert_response :success
  end

  test "should update group_eval" do
    patch group_eval_url(@group_eval), params: { group_eval: { created_at: @group_eval.created_at, evaluator_group_user_id: @group_eval.evaluator_group_user_id, evaluator_user_id: @group_eval.evaluator_user_id, grade: @group_eval.grade, group_id: @group_eval.group_id, invalid: @group_eval.invalid, portf_analysis_rating: @group_eval.portf_analysis_rating, portf_plan_rating: @group_eval.portf_plan_rating, poster_abstract_rating: @group_eval.poster_abstract_rating, poster_citation_rating: @group_eval.poster_citation_rating, poster_design_rating: @group_eval.poster_design_rating, poster_discussion_rating: @group_eval.poster_discussion_rating, poster_intro_abstr_rating: @group_eval.poster_intro_abstr_rating, poster_mat_meth_rating: @group_eval.poster_mat_meth_rating, poster_results_rating: @group_eval.poster_results_rating, poster_summary_comments: @group_eval.poster_summary_comments, proto_rating: @group_eval.proto_rating, proto_title: @group_eval.proto_title, school_id: @group_eval.school_id, semester: @group_eval.semester, updated_at: @group_eval.updated_at, year_id: @group_eval.year_id } }
    assert_redirected_to group_eval_url(@group_eval)
  end

  test "should get all group_evals with evaluator_group_user_id 1" do 
    get by_evaluator_group_evals_url(@group_eval.evaluator_group_user_id) 
    evals = parse_response response.body 
    assert_response :success
    assert_equal(Array, evals.class, "by_evaluator test: parsed response body should be an Array of hashes")
    evals.each do |ev|

      assert_equal(@group_eval.evaluator_group_user_id, ev["evaluator_group_user_id"], "by_evaluator test: ev['evaluator_group_user_id'] should be equal to @group_eval.evaluator_group_user_id") 
    end
  end

  test "should destroy group_eval" do
    assert_difference('GroupEval.count', -1) do
      delete group_eval_url(@group_eval)
    end

    assert_redirected_to group_evals_url
  end
  
  def parse_response (res)
    JSON.parse(res)
  end

end
