class TareaDevController < ApplicationController

    def index
        @tema = Tema.find(current_user.materia_actual)
        #TO DO generate this dinamically
        @preguntas =[]
        if(current_user.materia_actual==1)

            for i in 1..1
                @preguntas.push(generar_pregunta_tipo_1_1_1)
            end
        elsif (current_user.materia_actual==2)
            for i in 1..1
                @preguntas.push(generar_pregunta_tipo_2_1_1)
            end

        end


    end
    
    def next
        current_user.materia_actual.increment!(:materia_actual)
        


    end
    
    
    
    end