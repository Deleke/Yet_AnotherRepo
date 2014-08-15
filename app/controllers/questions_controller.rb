class QuestionsController < ApplicationController
  before_action :set_question, only: [:create, :index, :new, :show, :edit, :update, :destroy]
  #before_filter :load_quiz

  #def load_quiz
   # @questions = Quiz.find params [:quiz]
  #end

  # GET /questions
  # GET /questions.json
  def index
    @questions = @quiz.questions
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = @quiz.questions.create(question_params)
    if @question.save
      redirect_to quiz_questions_path(@quiz), notice: 'Question was successfully created.' 
    else
      render 'new'
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @quiz = Quiz.find(params[:quiz_id])
      # render json: @question
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:quest, :a, :b, :c, :d, :answer)
    end
end
