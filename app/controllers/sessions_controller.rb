class SessionsController < ApplicationController
  def new
  end

  def create
    session[:klass] = params[:klass]
    session[:id] = params[:id]
    raise unless user_signed_in?
    redirect_to root_path, flash: { success: 'Successfully Signed In!' }
  rescue => error
    redirect_to request.referer, flash: { error: error.message }
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
