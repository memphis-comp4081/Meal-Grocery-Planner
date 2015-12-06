class IngredientController < ApplicationController

	#added to require login before pantry is shown.
	before_action :authenticate_user!
  def index
    @ingredients = Ingredient.all
  end 


  def new
  	@ingredient = Ingredient.new
  end


  def create
    @ingredient = Ingredient.new(params_ingredient)
    if @ingredient.save
      redirect_to pantry_url
    else
      flash[:alert] = "Please fill out the form completely!"
      redirect_to ingredient_add_url
    end
  end

  private

  def params_ingredient
	  params.require(:ingredient).permit(
	    :description,
	    :unit_of_measure,
      :image
  	)
  end

end