require "application_system_test_case"

class GroupEvalsTest < ApplicationSystemTestCase
  setup do
    @group_eval = group_evals(:one)
  end

  test "visiting the index" do
    visit group_evals_url
    assert_selector "h1", text: "Group Evals"
  end

  test "creating a Group eval" do
    visit group_evals_url
    click_on "New Group Eval"

    fill_in "Created at", with: @group_eval.created_at
    fill_in "Evaluator group user", with: @group_eval.evaluator_group_user_id
    fill_in "Evaluator user", with: @group_eval.evaluator_user_id
    fill_in "Grade", with: @group_eval.grade
    fill_in "Group", with: @group_eval.group_id
    check "Invalid" if @group_eval.invalid
    fill_in "Portf analysis rating", with: @group_eval.portf_analysis_rating
    fill_in "Portf plan rating", with: @group_eval.portf_plan_rating
    fill_in "Poster abstract rating", with: @group_eval.poster_abstract_rating
    fill_in "Poster citation rating", with: @group_eval.poster_citation_rating
    fill_in "Poster design rating", with: @group_eval.poster_design_rating
    fill_in "Poster discussion rating", with: @group_eval.poster_discussion_rating
    fill_in "Poster intro abstr rating", with: @group_eval.poster_intro_abstr_rating
    fill_in "Poster mat meth rating", with: @group_eval.poster_mat_meth_rating
    fill_in "Poster results rating", with: @group_eval.poster_results_rating
    fill_in "Poster summary comments", with: @group_eval.poster_summary_comments
    fill_in "Proto rating", with: @group_eval.proto_rating
    fill_in "Proto title rating", with: @group_eval.proto_title
    fill_in "School", with: @group_eval.school_id
    fill_in "Semester", with: @group_eval.semester
    fill_in "Updated at", with: @group_eval.updated_at
    fill_in "Year", with: @group_eval.year_id
    click_on "Create Group eval"

    assert_text "Group eval was successfully created"
    click_on "Back"
  end

  test "updating a Group eval" do
    visit group_evals_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @group_eval.created_at
    fill_in "Evaluator group user", with: @group_eval.evaluator_group_user_id
    fill_in "Evaluator user", with: @group_eval.evaluator_user_id
    fill_in "Grade", with: @group_eval.grade
    fill_in "Group", with: @group_eval.group_id
    check "Invalid" if @group_eval.invalid
    fill_in "Portf analysis rating", with: @group_eval.portf_analysis_rating
    fill_in "Portf plan rating", with: @group_eval.portf_plan_rating
    fill_in "Poster abstract rating", with: @group_eval.poster_abstract_rating
    fill_in "Poster citation rating", with: @group_eval.poster_citation_rating
    fill_in "Poster design rating", with: @group_eval.poster_design_rating
    fill_in "Poster discussion rating", with: @group_eval.poster_discussion_rating
    fill_in "Poster intro abstr rating", with: @group_eval.poster_intro_abstr_rating
    fill_in "Poster mat meth rating", with: @group_eval.poster_mat_meth_rating
    fill_in "Poster results rating", with: @group_eval.poster_results_rating
    fill_in "Poster summary comments", with: @group_eval.poster_summary_comments
    fill_in "Proto rating", with: @group_eval.proto_rating
    fill_in "Proto title rating", with: @group_eval.proto_title
    fill_in "School", with: @group_eval.school_id
    fill_in "Semester", with: @group_eval.semester
    fill_in "Updated at", with: @group_eval.updated_at
    fill_in "Year", with: @group_eval.year_id
    click_on "Update Group eval"

    assert_text "Group eval was successfully updated"
    click_on "Back"
  end

  test "destroying a Group eval" do
    visit group_evals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group eval was successfully destroyed"
  end
end
