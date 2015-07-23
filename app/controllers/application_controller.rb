class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def admin?
    current_user.super_user
  end

  def check_admin
    unless admin?
      flash[:error] = "You must be an admin to access this section"
      redirect_to movies_path
    end
  end

  def previous_user?
    session[:previous_user].super_user
  end

  def restrict_access
    if !current_user
      flash[:alert] = "You must log in."
      redirect_to new_session_path
    end
  end

  helper_method :current_user, :check_admin, :admin?

end
