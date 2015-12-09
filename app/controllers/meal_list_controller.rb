class MealListController < ApplicationController
	
	#added to require login before pantry is shown.
	before_action :authenticate_user!

	def index
		@meal_list = current_user.meal_lists
		@meals = Meal.all
	end
	def delete
		m=MealList.find(params[:id])
		MealList.delete(m)
		# @meal_list = current_user.meal_lists
		# @meals = Meal.all
		redirect_to meal_list_url
	end
	def edit
		new_meal = Meal.find(params[:new_meal])
		dupe = false
		for item in current_user.meal_lists
			if item.meal == new_meal
				dupe = true
				break
			end
		end
		if not dupe
			ml = MealList.create()
			ml.meal = new_meal
			ml.save
			current_user.meal_lists.push(ml)

			current_user.save
		end
		redirect_to meal_list_url
	end
end
