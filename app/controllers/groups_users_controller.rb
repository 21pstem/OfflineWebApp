class GroupsUsersController < ApplicationController
  before_action :set_groups_user, only: [:by_evaluator]

  #get /groups_users/by_evaluator/:id
  #pass the user_id (NOT groups_user_id)
  def by_evaluator
  	@user_groups_by_id = GroupsUser.includes(:groups_evals).where(user_id: params[:id], user_role: 'evaluator')
  	if @user_groups_by_id.length > 0 
  	  @evals_by_user = []
      @user_groups_by_id.each do |g_user|
        @evals_by_user.push(g_user.groups_evals)
      end 
  	  render json: @evals_by_user, status: :ok
  	else
  	  #this could happen either because the groups_user is not an evaluator, OR because they are an evaluator, but they have no evaluations 
      render json: make_nil_eval, status: :ok, error: "Error: no groups_user with the evaluator role and :groups_evals was found"
  	end
  end

  def create
    
  end

  # Use callbacks to share common setup or constraints between actions.
  private
    def set_groups_user
      @groups_user = GroupsUser.find(params[:id])
    end

    def make_nil_eval
      [GroupsEval.new]
    end

end
