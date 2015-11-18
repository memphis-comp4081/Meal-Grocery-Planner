class ComponentController < ApplicationController

	#added to require login before pantry is shown.
	before_action :authenticate_user!

  def index
	@components = Component.all
  end

  def add
	@component = Component.new
  end

  def create
	@component = Component.new(params.require(:component).permit(:description, :instructions))
	@component.save!
	redirect_to component_edit_url(@component.id)
  end

  def edit
	@component = Component.find(params[:id])
	@comp_ingreds = ComponentsIngredient.where(:component_id => params[:id])
  end

  def update
	@component = Component.find(params[:id])
	@component.update(params.require(:component).permit(:description, :instructions))
	@component.save!
	redirect_to component_url
  end
end
