class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :user_signed_in?

  def current_user
    if session[:klass] && session[:id]
      @current_user ||= session[:klass].constantize.find(session[:id])
    end
  end

  def user_signed_in?
    !!current_user
  end
end
