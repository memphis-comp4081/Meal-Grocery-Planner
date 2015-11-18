class MealController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  	@meals = Meal.new
  	@components = Component.all
  end


  def create
  	@components = Component.all
  	# @component = Component.find(params[:component][:component_id])
    @meal = Meal.new(params_meal)
    if @meal.save
      redirect_to meal_list_url
    else
      flash[:alert] = "Please fill out the form completely!"
      redirect_to meal_add_url
    end
  end

  def edit
  end

  private

  def params_meal
	  params.require(:meal).permit(
	    :name,
	    :description
  	)
  end
end
