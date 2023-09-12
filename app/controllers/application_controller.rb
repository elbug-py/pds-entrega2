class ApplicationController < ActionController::Base
    helper_method :get_tema
    helper_method :generar_pregunta_tipo_2_1_1
    helper_method :generar_pregunta_tipo_1_1_1

    def get_tema
        if user_signed_in?
          @tema = Tema.find(current_user.materia_actual)
        end
      end
      
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
        @variables = {"presion": presion, "masa_mezcla": masa_mezcla, "masa_liquido": masa_liquido, "masa_vapor": masa_vapor, "calidad_mezcla": calidad_mezcla, "respuesta1": respuesta1, "respuesta2": respuesta2}
        @soluciones = 2
        @respuestas = [respuesta1, respuesta2]
        @pregunta=DevQuestion.create(enunciado: enunciado, tema: get_tema, dificultad: 1, tip: tip)
      end


      def generar_pregunta_tipo_1_1_1
        kg = rand(1..10)  # Genera un valor aleatorio entre 1 y 10 kg
        temperatura = rand(10..30)  # Genera un valor aleatorio entre 10°C y 30°C
        presion = rand(1..5)  # Genera un valor aleatorio entre 1 bar y 5 bar
        densidad_liquido = rand(800..1000)
        vol_liquido = kg/densidad_liquido
        vol_vapor = kg/0.6
        respuesta = vol_vapor-vol_liquido
        enunciado = "Un cilindro contiene #{kg} kg de una sustancia en estado líquido a una temperatura de #{temperatura}°C y una presión de #{presion} bar. Si se permite que la sustancia se evapore a su estado gaseoso, calcula el cambio de volumen del sistema.(Datos: densidad del líquido = #{densidad_liquido} kg/m³, densidad del vapor = 0.6 kg/m³)"
        @variables = {"kg": kg, "temperatura": temperatura, "presion": presion, "densidad_liquido": densidad_liquido, "vol_liquido": vol_liquido, "vol_vapor": vol_vapor, "respuesta": respuesta}
        @soluciones = 1
        @respuestas = [respuesta]
        @pregunta=DevQuestion.create(enunciado: enunciado, tema: get_tema, dificultad: 1, tip:"Utiliza la densisad para calcular los volúmenes del líquido y gas.")
    
        #redirect_to root_path, notice: 'Pregunta generada con éxito.'
      end
end
