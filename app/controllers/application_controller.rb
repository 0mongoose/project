class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_authorization
      unless current_user
          flash[:error] = t("views.sessions.access")
          redirect_to log_in_path
       end
   end

  helper_method :current_user, :require_authorization
end
