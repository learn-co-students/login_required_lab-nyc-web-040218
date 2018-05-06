class SessionsController < ApplicationController
  def new
  end

  def create
    #If params does not have a key called :name or it is emoty, redirect_to login page
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    #Otherwise add the name to the session hash and redirect to root page
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete(:name)
    redirect_to(controller: 'sessions', action: 'new')
  end
end
