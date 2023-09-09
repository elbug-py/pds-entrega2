class DevQuestionsController < ApplicationController
  before_action :set_dev_question, only: %i[ show edit update destroy ]

  def generar_pregunta_tipo_1
    kg = rand(1..10)  # Genera un valor aleatorio entre 1 y 10 kg
    temperatura = rand(10..30)  # Genera un valor aleatorio entre 10°C y 30°C
    presion = rand(1..5)  # Genera un valor aleatorio entre 1 bar y 5 bar

    pregunta = "Un cilindro contiene #{kg} kg de una sustancia en estado líquido a una temperatura de #{temperatura}°C y una presión de #{presion} bar. Si se permite que la sustancia se evapore a su estado gaseoso, calcula el cambio de volumen del sistema."

    DevQuestion.create(enunciado: pregunta, tema: 1, dificultad: 1, tip:"Utiliza la densisad para calcular los volúmenes del líquido y gas.")

    redirect_to root_path, notice: 'Pregunta generada con éxito.'
  end

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
