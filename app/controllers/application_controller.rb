class ApplicationController < ActionController::Base
  # include Pundit
  # protect_from_forgery
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  include UserRolesHelper
  
  protected

  def configure_permitted_parameters
    registration_params = [:email, :password, :password_confirmation, :username, :role]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
  end
  
  def authenticate_admin
    unless admin?
      flash[:error] = "Permission denied."
      redirect_to root_url and return
      false
    end
  end

end
