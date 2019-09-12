class GroupsUsersController < ApplicationController
  GROUPS_USERS_PARAMS = [
    :year_id, :semester, :school_id, :grade, :group_id, :user_id, :user_roles, :active
  ]

  # GET '/groups_users/by_evaluator/:user_id'
  # For getting a list of assignments for a given evaluator. 
  # @param :user_id is the id of the User, not the GroupsUser record.
  # @return an array with hashes of all of the data in each GroupsUser record with this user's id, and includes a 'group_eval_id' for each assignment.
  def by_evaluator
  	@user_groups_for_id = GroupsUser.where(user_id: params[:user_id], user_roles: 'evaluator')
    respond_to do |format|
      format.html { render :by_evaluator }
      format.json { render json: @user_groups_for_id, status: :ok }
    end

  end

end
