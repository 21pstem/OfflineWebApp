require "application_system_test_case"

class GroupsEvalsTest < ApplicationSystemTestCase
  setup do
    @groups_eval = groups_evals(:one)
  end

  test "visiting the index" do
    visit groups_evals_url
    assert_selector "h1", text: "Groups Evals"
  end

  test "creating a Groups eval" do
    visit groups_evals_url
    click_on "New Groups Eval"

    fill_in "Created at", with: @groups_eval.created_at
    fill_in "Evaluator group user", with: @groups_eval.evaluator_group_user_id
    fill_in "Evaluator user", with: @groups_eval.evaluator_user_id
    fill_in "Grade", with: @groups_eval.grade
    fill_in "Group", with: @groups_eval.group_id
    check "Invalid" if @groups_eval.invalid
    fill_in "Portf analysis rating", with: @groups_eval.portf_analysis_rating
    fill_in "Portf plan rating", with: @groups_eval.portf_plan_rating
    fill_in "Poster abstract rating", with: @groups_eval.poster_abstract_rating
    fill_in "Poster citation rating", with: @groups_eval.poster_citation_rating
    fill_in "Poster design rating", with: @groups_eval.poster_design_rating
    fill_in "Poster discussion rating", with: @groups_eval.poster_discussion_rating
    fill_in "Poster intro abstr rating", with: @groups_eval.poster_intro_abstr_rating
    fill_in "Poster mat meth rating", with: @groups_eval.poster_mat_meth_rating
    fill_in "Poster results rating", with: @groups_eval.poster_results_rating
    fill_in "Poster summary comments", with: @groups_eval.poster_summary_comments
    fill_in "Proto rating", with: @groups_eval.proto_rating
    fill_in "Proto title rating", with: @groups_eval.proto_title_rating
    fill_in "School", with: @groups_eval.school_id
    fill_in "Semester", with: @groups_eval.semester
    fill_in "Updated at", with: @groups_eval.updated_at
    fill_in "Year", with: @groups_eval.year_id
    click_on "Create Groups eval"

    assert_text "Groups eval was successfully created"
    click_on "Back"
  end

  test "updating a Groups eval" do
    visit groups_evals_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @groups_eval.created_at
    fill_in "Evaluator group user", with: @groups_eval.evaluator_group_user_id
    fill_in "Evaluator user", with: @groups_eval.evaluator_user_id
    fill_in "Grade", with: @groups_eval.grade
    fill_in "Group", with: @groups_eval.group_id
    check "Invalid" if @groups_eval.invalid
    fill_in "Portf analysis rating", with: @groups_eval.portf_analysis_rating
    fill_in "Portf plan rating", with: @groups_eval.portf_plan_rating
    fill_in "Poster abstract rating", with: @groups_eval.poster_abstract_rating
    fill_in "Poster citation rating", with: @groups_eval.poster_citation_rating
    fill_in "Poster design rating", with: @groups_eval.poster_design_rating
    fill_in "Poster discussion rating", with: @groups_eval.poster_discussion_rating
    fill_in "Poster intro abstr rating", with: @groups_eval.poster_intro_abstr_rating
    fill_in "Poster mat meth rating", with: @groups_eval.poster_mat_meth_rating
    fill_in "Poster results rating", with: @groups_eval.poster_results_rating
    fill_in "Poster summary comments", with: @groups_eval.poster_summary_comments
    fill_in "Proto rating", with: @groups_eval.proto_rating
    fill_in "Proto title rating", with: @groups_eval.proto_title_rating
    fill_in "School", with: @groups_eval.school_id
    fill_in "Semester", with: @groups_eval.semester
    fill_in "Updated at", with: @groups_eval.updated_at
    fill_in "Year", with: @groups_eval.year_id
    click_on "Update Groups eval"

    assert_text "Groups eval was successfully updated"
    click_on "Back"
  end

  test "destroying a Groups eval" do
    visit groups_evals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Groups eval was successfully destroyed"
  end
end
