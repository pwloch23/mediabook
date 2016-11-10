class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
	
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :age, :bio, :work, :school])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :age, :bio, :work, :school])
  end

end
