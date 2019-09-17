class GroupsUsersController < ApplicationController
  GROUPS_USERS_PARAMS = [
    :user_id
  ]

  # GET '/groups_users/by_evaluator/:user_id'
  # For getting a list of assignments for a given evaluator. 
  # @param :user_id is the id of the User, not the GroupsUser record.
  # @return an array with hashes of all of the data in each GroupsUser record with this user's id, and includes a 'group_eval_id' for each assignment.
  def by_evaluator
  	@user_groups_for_id = GroupsUser.where(user_id: params[:user_id], user_roles: 'evaluator')
    respond_to do |format|
      format.html { render :by_evaluator }
      format.json { render json: { data: @user_groups_for_id, errors: [] }, status: :ok }
    end

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def groups_user_params
      params.require(:groups_users).permit(GROUPS_USERS_PARAMS)
    end

end
