class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  
  


  def current_user
  	@current_user ||= User.where(id: session[:user_id].to_s).first
  end
  
 

  def authorize
  	redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
end