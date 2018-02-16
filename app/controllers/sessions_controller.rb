class SessionsController < ApplicationController
  def new    
  end

  def create
    session[:current_email] = user_email
    redirect_to root_path
  end

  private

  def user_email
    params[:session][:email]
  end
end
