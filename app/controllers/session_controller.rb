class SessionController < ActionController::Base
	def create
		if params[:name] == nil || !params[:name].empty?
			session[:name] = params[:name]
			redirect_to '/session/new'
		else
			redirect_to '/secrets/show'
		end
	end
	
	def destroy
		if session[:name] != nil || !session[:name].empty?
			session.delete :name
			redirect_to '/session/new'
		end
	end
end