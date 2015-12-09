class UserController < ApplicationController

	#added to require login before user info is shown.
	before_action :authenticate_user!

	def index
		@user = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update(params.require(:user).permit(:first_name, :last_name, :email))
		@user.save!
		redirect_to user_url
	end
end
