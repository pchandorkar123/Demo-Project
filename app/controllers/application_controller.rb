class ApplicationController < ActionController::Base
    #before_action :authenticate_user!

	protect_from_forgery with: :exception 
  

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:type,:name, :surname, :email, :password, :contact)}
   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:type,:name, :surname, :email, :password, :current_password, :contact)}
  end


end
