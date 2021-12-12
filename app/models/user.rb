class User < ApplicationRecord
	validates :user_name, presence: true, uniqueness: true
	validates :password, length: {minimum: 8}
	has_secure_password

	def self.confirm(params)
		@user = User.find_by({user_name: params[:user_name]})
		@user ? @user.authenticate(params[:password]) : false
	end

end
