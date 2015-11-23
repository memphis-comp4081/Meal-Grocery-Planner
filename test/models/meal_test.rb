require 'test_helper'

class MealTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid record" do
  	mealA = Meal.new
  	mealA.name = "Corn"
  	mealA.description = "Yellow, organic, good"
  	mealA.component_id = 12345
  	assert mealA.valid?
  end

  test "No Name" do
  	mealA = Meal.new
  	mealA.description = "Yellow, organic, good"
  	mealA.component_id = 12345
  	assert_not mealA.valid?
  end

  test "No Description" do
  	mealA = Meal.new
  	mealA.name = "Corn"
  	mealA.component_id = 12345
  	assert_not mealA.valid?
  end

  test "No Comp Id" do
  	mealA = Meal.new
  	mealA.name = "Corn"
  	mealA.description = "Yellow, organic, good"
  	assert mealA.valid?
  end

  test "Name not String" do
  	mealA = Meal.new
  	mealA.name = 54321
  	mealA.description = "Yellow, organic, good"
  	mealA.component_id = 12345
  	assert mealA.valid?
  end

  test "Description not String" do
  	mealA = Meal.new
  	mealA.name = "Corn"
  	mealA.description = 54321
  	mealA.component_id = 12345
  	assert mealA.valid?
  end

  test "Comp_Id not Int" do
  	mealA = Meal.new
  	mealA.name = "Corn"
  	mealA.description = "Yellow, organic, good"
  	mealA.component_id = "onetwothreefourfive"
  	assert mealA.valid?
  end
end

