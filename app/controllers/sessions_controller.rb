class SessionsController < ApplicationController

  def new
  end

  def create
    current_user
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end

end
