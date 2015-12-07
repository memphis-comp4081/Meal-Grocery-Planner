class MealController < ApplicationController
  before_action :authenticate_user!

  def index
  	@meal = Meal.all
  end

  def add
  	@meal = Meal.new
  	
  end


  def create
    @meal = Meal.new(params_meal)
    # @meal.components.push(@component)
    if @meal.save
      redirect_to meal_edit_url(@meal.id)
    else
      flash[:alert] = "Please fill out the form completely!"
      redirect_to meal_add_url
    end
  end

  def edit
    
    @meal = Meal.find(params[:id])
    @meal_components = @meal.components.where(:meal_id => params[:id])
    @components = Component.all
    
  end

  def update
    @meal = Meal.find(params[:id])
    begin
      @meal.components << Component.find(params[:component_id])
      @meal.update(params_meal)
      @meal.save!
      redirect_to meal_edit_url(@meal.id)
    rescue
      @meal.update(params_meal)
      @meal.save!
      redirect_to meal_list_url
    end
  end

  def delete
    @comp = Component.find(params[:component_id])
    @meal = Meal.find(params[:id])
    @meal.components.delete(@comp)
    redirect_to meal_edit_url(@meal.id)
  end

  private

  def params_meal
	  params.require(:meal).permit(
	    :name,
	    :description,
      :image
  	)
  end
end
