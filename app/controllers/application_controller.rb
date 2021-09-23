class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_pemitted_paramenters,if: :devise_controller?
  def after_sign_in_path_for(resource)
    user_path(@user)
  end
  protected
  def configure_pemitted_paramenters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
