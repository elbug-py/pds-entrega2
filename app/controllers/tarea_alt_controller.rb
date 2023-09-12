class TareaAltController < ApplicationController

def index
    @tema = Tema.find(current_user.materia_actual)
    #TO DO generate this dinamically
    @preguntas_pure = @tema.alt_questions
    @preguntas =[]
    @Pregunta = AltQuestion
    @i = 0
    @preguntas_pure.map do |pregunta|
        @preguntas.push(pregunta.id)
    end
end


def next_question

    json_data = JSON.parse(request.body.read)
    
    new_i = json_data['index'].to_i
    new_i = new_i+1
    # debugger
    preg = JSON.parse(json_data['preguntas'])
    if preg[new_i].class == NilClass
        respond_to do |format|
            format.json {render json: {'msg':'TODAS LISTAS'}}
        # debugger
        end
        return

    end
    # debugger
    bad_ans = JSON.parse(json_data['again'])
    if bad_ans == true

        ans = json_data['selected']
        ans = ans[new_i]       
            
        @pregunta = AltQuestion.find(preg[new_i])
        response = {
            html: render_to_string(partial: 'question_again',locals:{prev_ans:ans,pregunta:@pregunta,i:new_i,preguntas:preg})
        }
        respond_to do |format|
            format.json{ render json:response}
        end
        
        


    else

        @pregunta = AltQuestion.find(preg[new_i])
        response = {
            html: render_to_string(partial: 'question',locals:{pregunta:@pregunta,i:new_i,preguntas:preg})
        }
        respond_to do |format|
            format.json{ render json:response}
        end
    end
    

end



def again

    json_data = JSON.parse(request.body.read)
    
    new_i = json_data['index'].to_i
    preg = json_data['preguntas']

    if preg[new_i].class == NilClass
        respond_to do |format|
            format.json {render json: {'msg':'TODAS LISTAS'}}
        # debugger
        end
        return

    # debugger
    
    else
    
    ans = json_data['selected']
    ans = ans[new_i]       
        @pregunta = AltQuestion.find(preg[new_i])
        response = {
            html: render_to_string(partial: 'question_again',locals:{prev_ans:ans,pregunta:@pregunta,i:new_i,preguntas:preg})
        }
        respond_to do |format|
            format.json{ render json:response}
        end
    end
    

end




end