class DevQuestionsController < ApplicationController
  before_action :set_dev_question, only: %i[ show edit update destroy ]
  ##### Tema 1 Fácil #####
  def generar_pregunta_tipo_1_1_1
    kg = rand(1..10)  # Genera un valor aleatorio entre 1 y 10 kg
    temperatura = rand(10..30)  # Genera un valor aleatorio entre 10°C y 30°C
    presion = rand(1..5)  # Genera un valor aleatorio entre 1 bar y 5 bar
    densidad_liquido = rand(800..1000)
    vol_liquido = kg/densidad_liquido
    vol_vapor = kg/0.6
    respuesta = vol_vapor-vol_liquido
    pregunta = "Un cilindro contiene #{kg} kg de una sustancia en estado líquido a una temperatura de #{temperatura}°C y una presión de #{presion} bar. Si se permite que la sustancia se evapore a su estado gaseoso, calcula el cambio de volumen del sistema.(Datos: densidad del líquido = #{densidad_liquido} kg/m³, densidad del vapor = 0.6 kg/m³)"
    
    DevQuestion.create(enunciado: pregunta, tema: 1, dificultad: 1, tip:"Utiliza la densisad para calcular los volúmenes del líquido y gas.")

    redirect_to root_path, notice: 'Pregunta generada con éxito.'
  end

  def generar_pregunta_tipo_1_1_2
    kg = rand(1..10)  # Genera un valor aleatorio entre 1 y 10 kg

    pregunta = "Una muestra de agua se encuentra a 100°C y 1 atm de presión. Si se le suministra calor constantemente, ¿cuánto calor en julios se requerirá para convertir completamente #{kg} kg de agua líquida en vapor? (Datos: calor latente de vaporización del agua = 2260 kJ/kg)"
    respuesta = kg*2260000
    DevQuestion.create(enunciado: pregunta, tema: 1, dificultad: 1, tip:"Revisa las unidades de medida de cada dato.")

    redirect_to root_path, notice: 'Pregunta generada con éxito.'
  end

  def generar_pregunta_tipo_1_1_3
    kg = rand(1..10)  # Genera un valor aleatorio entre 1 y 10 kg
    presion = rand(1..5)
    pregunta = "Si tenemos una muestra de gas en un estado concreto, y sabemos que su presión es #{presion} atm y su volumen específico es 0.08 m³/kg, ¿cuál sería su densidad?"
    respuesta = 1/0.08
    DevQuestion.create(enunciado: pregunta, tema: 1, dificultad: 1, tip:"Revisa las unidades de medida del volumen específico.")

    redirect_to root_path, notice: 'Pregunta generada con éxito.'
  end

  ##### Tema 2 Fácil #####
  def generar_pregunta_tipo_2_1_1
    presion = rand(1..3)
    masa_mezcla = rand(1..5)
    masa_liquido = rand(1..3)
    enunciado = "Se tiene una mezcla bifásica líquido-vapor de agua y vapor de agua a una presión de #{presion} bar. La masa total de la mezcla es de #{masa_mezcla} kg. Si la masa del líquido presente en la mezcla es de #{masa_liquido} kg, calcula: 1) La masa de vapor en la mezcla. 2) La calidad de la mezcla. (Datos adicionales: densidad del líquido de agua a esa temperatura y presión = 1000 kg/m³)"
    tip = "Para calcular la calidad de la mezcla, recuerda que se define como la fracción de masa que está en estado de vapor (calidad = masa de vapor / masa total)."
  
    masa_vapor = masa_mezcla-masa_liquido
    calidad_mezcla = masa_vapor/masa_mezcla

    respuesta1 = masa_vapor
    respuesta2 = calidad_mezcla

    DevQuestion.create(enunciado: enunciado, tema: 2, dificultad: 1, tip: tip)
  end

  def generar_pregunta_tema_1_facil
    choice = rand(0..3)
    if choice==0
      generar_pregunta_tipo_1_1_1
      redirect_to root_path
    elsif choice==1
      generar_pregunta_tipo_1_1_2
      redirect_to root_path
    elsif choice==2
      generar_pregunta_tipo_1_1_3
      redirect_to root_path
    end
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
