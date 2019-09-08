class GroupsUsersController < ApplicationController
  before_action :set_groups_user, only: [:by_evaluator]
  def by_evaluator
  	@evals_by_user = GroupsUser.where(user_id: params[:id], user_role: 'evaluator').first.group_evals
  	if @evals_by_user.length == 0 
      @evals_by_user = GroupEval.new
    end
  	render json: @evals_by_user, status: :ok
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_groups_user
    @groups_user = GroupsUser.find(params[:id])
  end
end
