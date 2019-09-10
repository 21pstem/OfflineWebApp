require 'test_helper'

class GroupsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
  	#how do we set up groups_evals for the test user, so that we can test what happens when groups_evals are found for the user?
    @groups_user = groups_users(:one)
  end

  test "should get by_evaluator" do
    get by_evaluator_groups_users_url(@groups_user.id)
    evals = parse_response response.body
    assert_equal(Array, evals.class, "groups_users#by_evaluator: response body should be an Array")
    evals.each do |eval|
      if eval[:evaluator_group_user_id] == @groups_user.id
      	assert_equal(@groups_user.group_id, eval[:group_id], "groups_users#by_evaluator: groups_user and groups_eval should have the same group_id")
      else
      	assert_equal(nil, eval[:group_id], "groups_users#by_evaluator: a new record should have been created with groups_eval[:group_id] == nil if no evals were found for this user")
      end
    end
    assert_response :success
  end

end
