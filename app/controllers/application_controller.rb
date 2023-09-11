class ApplicationController < ActionController::Base
    helper_method :get_tema

    def get_tema
        if user_signed_in?
          @tema = Tema.find(current_user.materia_actual)
        end
      end
      
end
