class SessionsController < ApplicationController

	def new
		@user = User.new
	end

	def create
		user_params = params.require(:user).permit(:user_name, :password)
		@user = User.confirm(user_params)
		if @user
			login(@user)
			flash[:alert] = "Successfully logged in."
			redirect_to @user
		else
			flash[:error] = "Incorrect email or password."
			redirect_to login_path
		end
	end

	def destroy
		logout
		flash[:alert] = "Successfully logged out."
		redirect_to home_page_path
	end

end
