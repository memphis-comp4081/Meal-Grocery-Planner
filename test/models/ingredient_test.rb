require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	test "valid record" do
		new_ingredient = Ingredient.new
		new_ingredient.description = "Ground Beef"
		new_ingredient.unit_of_measure = "pound"
		assert new_ingredient.valid?
	end

	test "no description" do
		new_ingredient = Ingredient.new
		new_ingredient.unit_of_measure = "pound"
		assert_not new_ingredient.valid?
	end

	test "no unit of measure" do
		new_ingredient = Ingredient.new
		new_ingredient.description = "Ground Beef"
		assert_not new_ingredient.valid?
	end
end
