require 'test_helper'

class PantryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "valid record" do
		new_pantry = Pantry.new
		new_pantry.quantity = 1
		assert new_pantry.valid?
	end

	test "no quantity given" do
		new_pantry = Pantry.new
		assert_not new_pantry.valid?
	end

	test "negative quantity given" do
		new_pantry = Pantry.new
		new_pantry.quantity = -1
		assert_not new_pantry.valid?
	end

	test "quantity of 0" do
		new_pantry = Pantry.new
		new_pantry.quantity = 0
		assert new_pantry.valid?
	end

	test "mixed quantity" do
		new_pantry = Pantry.new
		new_pantry.quantity = 2.5
		assert new_pantry.valid?
	end
end
