class DevQuestionsController < ApplicationController
  before_action :set_dev_question, only: %i[ show edit update destroy ]

  # GET /dev_questions or /dev_questions.json
  def index
    @dev_questions = DevQuestion.all
  end

  # GET /dev_questions/1 or /dev_questions/1.json
  def show
  end

  # GET /dev_questions/new
  def new
    @dev_question = DevQuestion.new
  end

  # GET /dev_questions/1/edit
  def edit
  end

  # POST /dev_questions or /dev_questions.json
  def create
    @dev_question = DevQuestion.new(dev_question_params)

    respond_to do |format|
      if @dev_question.save
        format.html { redirect_to dev_question_url(@dev_question), notice: "Dev question was successfully created." }
        format.json { render :show, status: :created, location: @dev_question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dev_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dev_questions/1 or /dev_questions/1.json
  def update
    respond_to do |format|
      if @dev_question.update(dev_question_params)
        format.html { redirect_to dev_question_url(@dev_question), notice: "Dev question was successfully updated." }
        format.json { render :show, status: :ok, location: @dev_question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dev_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_questions/1 or /dev_questions/1.json
  def destroy
    @dev_question.destroy

    respond_to do |format|
      format.html { redirect_to dev_questions_url, notice: "Dev question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_question
      @dev_question = DevQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dev_question_params
      params.require(:dev_question).permit(:id_tema, :enunciado, :respuesta, :dificultad)
    end
end
