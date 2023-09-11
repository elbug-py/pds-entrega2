class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    # Permit the additional parameters for the sign-up action
    if params[:action] == 'create'
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :apellido])
    end
  end
end
