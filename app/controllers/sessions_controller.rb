class SessionsController < ApplicationController

  def new
    if session[:name] && session[:name] != nil && !session[:name].empty?
      redirect_to '/secrets/show'
    else
      redirect_to '/sessions/new'
    end
  end

  def create
    if params[:name] && params[:name] != nil
      session[:name] = params[:name]
    elsif params[:name] == nil || params[:name].empty?
      redirect_to '/sessions/new'
    end
  end

  def destroy
    if session[:name] && session[:name] != nil
      session.delete :name
      redirect_to '/sessions/new'
    end
  end

end
