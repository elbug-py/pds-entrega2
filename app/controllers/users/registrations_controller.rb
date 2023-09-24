class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  protected

  def configure_sign_up_params
    puts "PROBANDO PROBANDO"
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :apellido])
    
  end
end
