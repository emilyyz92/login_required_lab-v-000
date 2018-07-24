class SessionsController < ApplicationController

  def new
  end

  def create
    current_user
    redirect_to secrets_path
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end

end
