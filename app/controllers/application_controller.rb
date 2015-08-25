class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:user_name, :image, :member, :profile, :works]
    devise_parameter_sanitizer.for(:sign_in) << [:user_name, :image, :member, :profile, :works]
    devise_parameter_sanitizer.for(:account_update) << [:user_name, :image, :member, :profile, :works]
  end

  def after_sign_out_path_for(resouce)
    '/users/sign_in'
  end
end
