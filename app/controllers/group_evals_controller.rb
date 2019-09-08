class GroupEvalsController < ApplicationController
  before_action :set_group_eval, only: [:show, :edit, :update, :destroy]

  # GET /group_evals
  # GET /group_evals.json
  def index
    @group_evals = GroupEval.all
  end

  def by_evaluator
    puts "params: #{params.inspect}"
    @evals = GroupEval.where(evaluator_group_user_id: params[:id]).find_each
    render json: @evals, status: :ok
  end

  # GET /group_evals/1
  # GET /group_evals/1.json
  def show
  end

  # GET /group_evals/new
  def new
    @group_eval = GroupEval.new
  end

  # GET /group_evals/1/edit
  def edit
  end

  # POST /group_evals
  # POST /group_evals.json
  def create
    @group_eval = GroupEval.new(group_eval_params)

    respond_to do |format|
      if @group_eval.save
        format.html { redirect_to @group_eval, notice: 'Groups eval was successfully created.' }
        format.json { render :show, status: :created, location: @group_eval }
      else
        format.html { render :new }
        format.json { render json: @group_eval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_evals/1
  # PATCH/PUT /group_evals/1.json
  def update
    respond_to do |format|
      if @group_eval.update(group_eval_params)
        format.html { redirect_to @group_eval, notice: 'Groups eval was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_eval }
      else
        format.html { render :edit }
        format.json { render json: @group_eval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_evals/1
  # DELETE /group_evals/1.json
  def destroy
    @group_eval.destroy
    respond_to do |format|
      format.html { redirect_to group_evals_url, notice: 'Groups eval was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_eval
      @group_eval = GroupEval.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_eval_params
      params.require(:group_eval).permit(:year_id, :semester, :school_id, :grade, :group_id, :evaluator_user_id, :evaluator_group_user_id, :portf_plan_rating, :portf_analysis_rating, :proto_title, :proto_rating, :poster_abstract_rating, :poster_intro_abstr_rating, :poster_mat_meth_rating, :poster_results_rating, :poster_discussion_rating, :poster_citation_rating, :poster_design_rating, :poster_summary_comments, :invalid, :created_at, :updated_at)
    end
end
