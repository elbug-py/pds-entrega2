class ApplicationController < ActionController::Base
  # debugger
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:ombre, :apellido])
  end
end
