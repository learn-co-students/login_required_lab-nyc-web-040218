class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def hello
    #verifying again whether the user name exists in the session
    #If it does not, redirect to the login page
    #Otherwise, render hello.html.erb
    redirect_to controller: "sessions", action: "new" if !current_user
  end
end
