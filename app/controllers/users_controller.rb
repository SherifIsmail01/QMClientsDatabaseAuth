class UsersController < ApplicationController

	def index
		@users = User.all
		@auditors = Auditor.all
		@clients = Client.all
	end

	def new
		@user = User.new
	end

	def create
		if  user_params[:password].length >= 8
			@user = User.create(user_params)
		 	login(@user)
		 	redirect_to @user
		else
			flash[:alert] = "minimum password length 8 characters"
			redirect_to new_user_path
		end
	end

	def show
		@user = User.find_by_id(params[:id])
	end


	private

	def user_params
		params.require(:user).permit(:user_name, :password)
	end


end
