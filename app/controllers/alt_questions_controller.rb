class AltQuestionsController < ApplicationController
  before_action :set_alt_question, only: %i[ show edit update destroy ]

  # GET /alt_questions or /alt_questions.json
  def index
    @alt_questions = AltQuestion.all
  end

  # GET /alt_questions/1 or /alt_questions/1.json
  def show
  end

  # GET /alt_questions/new
  def new
    @alt_question = AltQuestion.new
  end

  # GET /alt_questions/1/edit
  def edit
  end

  # POST /alt_questions or /alt_questions.json
  def create
    @alt_question = AltQuestion.new(alt_question_params)

    respond_to do |format|
      if @alt_question.save
        format.html { redirect_to alt_question_url(@alt_question), notice: "Alt question was successfully created." }
        format.json { render :show, status: :created, location: @alt_question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alt_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alt_questions/1 or /alt_questions/1.json
  def update
    respond_to do |format|
      if @alt_question.update(alt_question_params)
        format.html { redirect_to alt_question_url(@alt_question), notice: "Alt question was successfully updated." }
        format.json { render :show, status: :ok, location: @alt_question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alt_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alt_questions/1 or /alt_questions/1.json
  def destroy
    @alt_question.destroy

    respond_to do |format|
      format.html { redirect_to alt_questions_url, notice: "Alt question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alt_question
      @alt_question = AltQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alt_question_params
      params.require(:alt_question).permit(:tema_id, :enunciado, :alternativa1, :alternativa2, :alternativa3, :alternativa4, :respuesta, :dificultad)
    end
end
