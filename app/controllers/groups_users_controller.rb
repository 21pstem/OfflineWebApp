class GroupsUsersController < ApplicationController
  before_action :set_groups_user, only: [:by_evaluator]

  def by_evaluator
  	@evals_by_user = GroupsUser.includes(:group_evals).where(user_id: params[:id], user_role: 'evaluator')
  	if @evals_by_user.length > 0 
  	  @evals_by_user = @evals_by_user.first.group_evals
  	  render json: @evals_by_user, status: :ok
  	else
  	  #this could happen either because the groups_user is not an evaluator, OR because they are an evaluator, but they have no evaluations 
      render json: make_nil_eval, status: :ok, error: "Error: no groups_user with the evaluator role and :group_evals was found"
  	end
  end

  # Use callbacks to share common setup or constraints between actions.
  private
    def set_groups_user
      @groups_user = GroupsUser.find(params[:id])
    end

    def make_nil_eval
      [GroupEval.new]
    end

end
