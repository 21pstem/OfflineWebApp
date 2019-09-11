require 'test_helper'

class GroupsUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get by_evaluator" do
    get groups_users_by_evaluator_url
    assert_response :success
  end

end
