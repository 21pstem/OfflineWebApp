class GroupsUsersController < ApplicationController
  GROUPS_USERS_PARAMS = [
    :year_id, :semester, :school_id, :grade, :group_id, :user_id, :user_roles, :active
  ]
  before_action :set_user, only: [:by_evaluator]

  # GET '/groups_users/by_evaluator/:user_id'
  # For getting a list of assignments for a given evaluator. 
  # @param :user_id is the id of the User, not the GroupsUser record.
  # @return an array with hashes of all of the data in each GroupsUser record with this user's id, and includes a 'group_eval_id' for each assignment.
  def by_evaluator
  	@assignments = []
  	@user_groups_for_id = GroupsUser.includes(:groups_evals).where(user_id: params[:user_id], user_roles: 'evaluator')
  	@user_groups_for_id.each do |g|
  	  temp = g.as_json
  	  if g.groups_evals.length == 0
        g_e = GroupsEval.create({evaluator_group_user_id: g.id, evaluator_user_id: g.user_id, group_id: g.group_id, grade: g.grade, year_id: g.year_id, semester: g.semester, school_id: g.school_id})
        temp['group_eval_id'] = g_e.id
  	  else
  	    temp['group_eval_id'] = g.groups_evals.first.id
  	  end
  	  @assignments.push(temp)
  	end
  	#render json: @assignments, status: :ok


    respond_to do |format|
      format.html { render :by_evaluator }
      format.json { render json: @assignments, status: :ok }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = GroupsUser.find(params[:user_id])
    end
end
