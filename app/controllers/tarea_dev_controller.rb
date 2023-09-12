class TareaDevController < ApplicationController

    def index
        @tema = Tema.find(current_user.materia_actual)
        #TO DO generate this dinamically
        
        @preguntas =[]
        for i in 1..1
            @preguntas.push(generar_pregunta_tipo_1_1_1)
        end
    end
    
    
    
    
    
    end