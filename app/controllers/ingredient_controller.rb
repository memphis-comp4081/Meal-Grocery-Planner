class IngredientController < ApplicationController

  def new
  	@ingredient = Ingredient.new
  end


  def create
    @ingredient = Ingredient.new(params_ingredient)
    @ingredient.save! 
  	redirect_to pantry_url
  end

  private

  def params_ingredient
	  params.require(:ingredient).permit(
	    :description,
	    :unit_of_measure
  	)
  end

end
