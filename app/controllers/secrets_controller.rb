class SecretsController < ApplicationController
  def show
    if !session[:name] || session[:name] == []
      redirect_to '/login'
    end
  end
end
