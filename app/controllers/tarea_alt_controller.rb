class TareaAltController < ApplicationController

def index
    @tema = Tema.find(current_user.materia_actual)
    #TO DO generate this dinamically
    @preguntas_pure = @tema.alt_questions
    @preguntas =[]
    @preguntas_pure.map do |pregunta|
        @preguntas.push(pregunta)
    end
end


def next_question
    json_data = JSON.parse(request.body.read)
    i = body["index"]
    

end





end