class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_paramters, if: :devise_controller?

  def configure_permitted_paramters
    devise_parameter_sanitizer.for(:account_update)  << :phone_number << :description << :email << :password
  end
end
