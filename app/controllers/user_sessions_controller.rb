class UserSessionsController < ApplicationController
	def new 
	end 

	def create
		if login(params[:email], params[:password])
			redirect_back_or_to(posts_path, notice: "Logged in sucessfully.")
		else 
			flash.now.alert = "Login failed"
			render action: new
		end
	end 

	def destroy
		logout
		redirect_to(:users, notice: "Logged out sucessfully!")
	end 
end
