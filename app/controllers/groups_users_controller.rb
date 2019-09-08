class GroupsUsersController < ApplicationController
  before_action :set_groups_user, only: [:by_evaluator]
  def by_evaluator
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_groups_user
    @groups_user = GroupsUser.find(params[:id])
  end
end
