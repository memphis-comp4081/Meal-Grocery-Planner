class ComponentsIngredientController < ApplicationController

	#added to require login before pantry is shown.
	before_action :authenticate_user!

  def add
	@component = Component.find(params[:id])
	@ingredients = Ingredient.all
  end

  def create
	@comp_ingred = ComponentsIngredient.new(params.require(:components_ingredient).permit(:ingredient_id, :quantity))
	@comp_ingred.component_id = params[:id]
	@comp_ingred.save!
	redirect_to component_edit_url(params[:id])
  end

  def delete
	#@comp_ingred = ComponentsIngredient.where(:id => params[:id])
	#@component = Component.where(:id => @comp_ingred.component_id)
	ComponentsIngredient.delete(params[:id])
	redirect_to component_edit_url(params[:comp_id])
  end

  def index
  	@comp_ingred = ComponentsIngredient.all
  end

end
