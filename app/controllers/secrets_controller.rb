class SecretController < ActionController::Base
	def show
		if session[:name] == nil || session[:name].empty?
			redirect_to '/session/new'
		end
	end
end