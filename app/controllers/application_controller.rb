class ApplicationController < ActionController::API

    before_action :configure_permitted_parameters, if: :devise_controller?

  # Disable CSRF for APIs
  #protect_from_forgery with: :null_session

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation])
  end
end
