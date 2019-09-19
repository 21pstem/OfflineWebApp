class GroupsEvalsController < ApplicationController

  before_action :set_response_json
  before_action :reset_errors, except: []
  before_action :set_groups_eval, only: [:show, :edit, :update, :destroy]

  GROUPS_EVALS_PARAMS = [
    :year_id, :semester, :school_id, :grade, :group_id, :evaluator_user_id, :evaluator_group_user_id, :portf_plan_rating, :portf_analysis_rating, :proto_title, :proto_rating, :poster_abstract_rating, :poster_intro_abstr_rating, :poster_mat_meth_rating, :poster_results_rating, :poster_discussion_rating, :poster_citation_rating, :poster_design_rating, :poster_summary_comments, :rejected, :active
  ]


  # GET /groups_evals/1
  # GET /groups_evals/1.json
  def show
    puts ("@groups_eval: #{@groups_eval.inspect}")
    puts ("@errors: #{@errors.inspect}")
    render json: { data:  {groups_eval: @groups_eval}, errors: @errors}.to_json, status: :ok
  end

  # GET /groups_evals/new
  # GET /groups_evals/new.json
  def new
    # the foreign key fields should be pre-populated
    @groups_eval = GroupsEval.new
    render json: { data:  {groups_eval: @groups_eval}, errors: @errors}.to_json, status: :ok
  end

  # GET /groups_evals/1/edit
  # GET /groups_evals/1/edit.json
  def edit
    puts ("@groups_eval: #{@groups_eval.inspect}")
    puts ("@errors: #{@errors.inspect}")
    render json: { data:  {groups_eval: @groups_eval}, errors: @errors }.to_json, status: :ok
  end

  # POST /groups_evals
  # POST /groups_evals.json
  def create
    puts "groups_eval_params: #{groups_eval_params.inspect}"
    @groups_eval = GroupsEval.new(groups_eval_params)
    puts "@groups_eval: #{@groups_eval.inspect}"

    if @groups_eval.save
      render json: { data:  {groups_eval: @groups_eval}, errors: @errors }.to_json, status: :created
    else
      @errors += @groups_eval.errors.full_messages
      render json: { data: {groups_eval: @groups_eval.errors}, errors: @errors}.to_json, status: :ok
    end
  end

  # PATCH/PUT /groups_evals/1
  # PATCH/PUT /groups_evals/1.json
  def update
    if @groups_eval.update(groups_eval_params)
      render json: { data: {groups_eval: @groups_eval}, errors: @errors}.to_json, status: :ok
    else
      render json: { data: {groups_eval: @groups_eval.errors}, errors: @errors }.to_json, status: :unprocessable_entity
    end
  end

  # DELETE /groups_evals/1
  # DELETE /groups_evals/1.json
  # sets the active flag to false - deactivating this record
  def destroy
    if @groups_eval.update(active: false)
      render json: { data: {groups_eval: @groups_eval}, errors: @errors }.to_json, status: :ok
    else
      render json: { data: {groups_eval: @groups_eval.errors}, errors: @errors }.to_json, status: :unprocessable_entity
    end
  end

  private
    # preset errors to empty array.
    def reset_errors
      @errors = []
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_groups_eval
      @groups_eval = GroupsEval.where(id: params[:id]).first
      puts "@group_evals: #{@group_evals.inspect}"
     if @groups_eval == nil
        @groups_eval = GroupsEval.new
        @errors.append "Missing groups_eval with id #{params[:id]}"
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def groups_eval_params
      params.require(:groups_eval).permit(GROUPS_EVALS_PARAMS)
    end

    # always respond with json
    def set_response_json
      request.format = :json
    end
end
