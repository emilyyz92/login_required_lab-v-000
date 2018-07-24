class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == '' || session[:name] == nil
      redirect_to '/'
    else
      session[:name] = params[:name]
  end
end
