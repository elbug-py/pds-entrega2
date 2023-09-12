class ApplicationController < ActionController::Base
    helper_method :get_tema
    helper_method :generar_pregunta_tipo_2_1_1

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

        @respuestas = [respuesta1, respuesta2]
        @pregunta=DevQuestion.create(enunciado: enunciado, tema: get_tema, dificultad: 1, tip: tip)
      end
end
