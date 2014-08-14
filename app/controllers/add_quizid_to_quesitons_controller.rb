class AddQuizidToQuesitonsController < ApplicationController
  before_action :set_add_quizid_to_quesiton, only: [:show, :edit, :update, :destroy]

  # GET /add_quizid_to_quesitons
  # GET /add_quizid_to_quesitons.json
  def index
    @add_quizid_to_quesitons = AddQuizidToQuesiton.all
  end

  # GET /add_quizid_to_quesitons/1
  # GET /add_quizid_to_quesitons/1.json
  def show
  end

  # GET /add_quizid_to_quesitons/new
  def new
    @add_quizid_to_quesiton = AddQuizidToQuesiton.new
  end

  # GET /add_quizid_to_quesitons/1/edit
  def edit
  end

  # POST /add_quizid_to_quesitons
  # POST /add_quizid_to_quesitons.json
  def create
    @add_quizid_to_quesiton = AddQuizidToQuesiton.new(add_quizid_to_quesiton_params)

    respond_to do |format|
      if @add_quizid_to_quesiton.save
        format.html { redirect_to @add_quizid_to_quesiton, notice: 'Add quizid to quesiton was successfully created.' }
        format.json { render :show, status: :created, location: @add_quizid_to_quesiton }
      else
        format.html { render :new }
        format.json { render json: @add_quizid_to_quesiton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_quizid_to_quesitons/1
  # PATCH/PUT /add_quizid_to_quesitons/1.json
  def update
    respond_to do |format|
      if @add_quizid_to_quesiton.update(add_quizid_to_quesiton_params)
        format.html { redirect_to @add_quizid_to_quesiton, notice: 'Add quizid to quesiton was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_quizid_to_quesiton }
      else
        format.html { render :edit }
        format.json { render json: @add_quizid_to_quesiton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_quizid_to_quesitons/1
  # DELETE /add_quizid_to_quesitons/1.json
  def destroy
    @add_quizid_to_quesiton.destroy
    respond_to do |format|
      format.html { redirect_to add_quizid_to_quesitons_url, notice: 'Add quizid to quesiton was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_quizid_to_quesiton
      @add_quizid_to_quesiton = AddQuizidToQuesiton.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_quizid_to_quesiton_params
      params.require(:add_quizid_to_quesiton).permit(:quizid)
    end
end
