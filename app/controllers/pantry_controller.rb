class PantryController < ApplicationController
	
	#added to require login before pantry is shown.
	before_action :authenticate_user!

	def index
		@pantries = current_user.pantries
	end

	def add
		@pantry = Pantry.new
		@users = User.all
		@ingredients = Ingredient.all
	end

	def create
		@user = current_user
		@ingredient = Ingredient.find(params[:pantry][:ingredient_id])
		if current_user.pantries.exists?(:ingredient_id => @ingredient)
			@pantry = current_user.pantries.find_by(:ingredient_id => @ingredient)
			flash[:notice] = @ingredient.description + ' already exists in your pantry. Please change the quantity here.'
			redirect_to pantry_edit_path(@pantry) 
		else
			@pantry = Pantry.new(params.require(:pantry).permit(:quantity))
			@pantry.user = @user
			@pantry.ingredient = @ingredient
			begin
				@pantry.save!
				redirect_to pantry_url
			rescue Exception
				flash[:notice] = "There was an issue saving your pantry."
				redirect_to pantry_add_path()
			end
		end
		
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

	def checkCurrentPantry
		

	end
end
