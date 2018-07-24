class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == '' || params[:name] == nil
      redirect_to '/login'
    else
      current_user
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end

end
