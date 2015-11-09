class PantryController < ApplicationController
	def index
		@pantries = Pantry.all
	end

	def add
		@pantry = Pantry.new
		@user = User.all
		@ingredient = Ingredient.all
	end

	def create
		@user = User.find(params[:pantry][:user_id])
		@ingredient = User.find(params[:pantry][:ingredient_id])
		@pantry = Pantry.new(params.require(:pantry).permit(:quantity))
		@pantry.user = @user
		@pantry.ingredient = @ingredient
		@pantry.save!
		redirect_to pantry_url
	end

	def edit
		@pantry = Pantry.find(params[:id])
		@ingredient = Ingredient.find(params[:id])
		#@user = UserProfile.find(params[:id])
	end

	def update
		@pantry = Pantry.find(params[:id])
		@pantry.update(params.require(:id).permit(:quantity))
		redirect_to pantry_url
	end
end
