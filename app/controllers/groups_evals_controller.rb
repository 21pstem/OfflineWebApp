class GroupsEvalsController < ApplicationController
  before_action :set_groups_eval, only: [:show, :edit, :update, :destroy]

  # GET /groups_evals
  # GET /groups_evals.json
  def index
    @groups_evals = GroupsEval.all
  end

  def by_evaluator
    puts "params: #{params.inspect}"
    @evals = GroupsEval.where(evaluator_group_user_id: params[:id]).find_each
    render json: @evals, status: :ok
  end

  # GET /groups_evals/1
  # GET /groups_evals/1.json
  def show
  end

  # GET /groups_evals/new
  def new
    @groups_eval = GroupsEval.new
  end

  # GET /groups_evals/1/edit
  def edit
  end

  # POST /groups_evals
  # POST /groups_evals.json
  def create
    @groups_eval = GroupsEval.new(groups_eval_params)

    respond_to do |format|
      if @groups_eval.save
        format.html { redirect_to @groups_eval, notice: 'Groups eval was successfully created.' }
        format.json { render :show, status: :created, location: @groups_eval }
      else
        format.html { render :new }
        format.json { render json: @groups_eval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups_evals/1
  # PATCH/PUT /groups_evals/1.json
  def update
    respond_to do |format|
      if @groups_eval.update(groups_eval_params)
        format.html { redirect_to @groups_eval, notice: 'Groups eval was successfully updated.' }
        format.json { render :show, status: :ok, location: @groups_eval }
      else
        format.html { render :edit }
        format.json { render json: @groups_eval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups_evals/1
  # DELETE /groups_evals/1.json
  def destroy
    @groups_eval.destroy
    respond_to do |format|
      format.html { redirect_to groups_evals_url, notice: 'Groups eval was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groups_eval
      @groups_eval = GroupsEval.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def groups_eval_params
      params.require(:groups_eval).permit(:year_id, :semester, :school_id, :grade, :group_id, :evaluator_user_id, :evaluator_group_user_id, :portf_plan_rating, :portf_analysis_rating, :proto_title_rating, :proto_rating, :poster_abstract_rating, :poster_intro_abstr_rating, :poster_mat_meth_rating, :poster_results_rating, :poster_discussion_rating, :poster_citation_rating, :poster_design_rating, :poster_summary_comments, :invalid, :created_at, :updated_at)
    end
end
