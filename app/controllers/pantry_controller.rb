class PantryController < ApplicationController
	
	#added to require login before pantry is shown.
	before_action :authenticate_user!

	def index
		@pantries = Pantry.all
	end

	def add
		@pantry = Pantry.new
		@users = User.all
		@ingredients = Ingredient.all
	end

	def create
		@user = User.find(params[:pantry][:user_id])
		@ingredient = Ingredient.find(params[:pantry][:ingredient_id])
		@pantry = Pantry.new(params.require(:pantry).permit(:quantity))
		@pantry.user = @user
		@pantry.ingredient = @ingredient
		@pantry.save!
		redirect_to pantry_url
	end

	def edit
		@ingredients = Ingredient.all
		@pantry = Pantry.find(params[:id])
	end

	def update
		#@ingredient = Ingredient.find(params[:pantry][:ingredient_id])
		@pantry = Pantry.find(params[:id])
		@pantry.update(params.require(:pantry).permit(:quantity))
		@pantry.save!
		redirect_to pantry_url
	end
end
