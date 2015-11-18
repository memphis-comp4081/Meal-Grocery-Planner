class MealController < ApplicationController
  def new
  	@meal = Meal.new
  end


  def create
    @meal = Meal.new(params_meal)
    if @meal.save
      redirect_to pantry_url
    else
      flash[:alert] = "Please fill out the form completely!"
      redirect_to ingredient_add_url
    end
  end

  def edit
  end

  private

  def params_mean
	  params.require(:meal).permit(
	    :name,
	    :description
  	)
  end
end
