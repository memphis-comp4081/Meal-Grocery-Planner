require 'test_helper'

class ComponentTest < ActiveSupport::TestCase
   test "invalid instructions" do
  	comp1 = Component.new
  	comp1.description = "Sauce"
  	comp1.instructions = 
  	assert comp1.valid?
end

 test "invalid description" do
  	comp2 = Component.new
  	comp2.description = 
  	comp2.instructions = "Boil and strain"
  	assert comp2.valid?
end
 test "invalid instructions" do
  	comp3 = Component.new
  	comp3.description = "Pickles"
  	comp3.instructions = "Slice your cucumber, leave the slices in a mix of saltwater overnight"
  	assert comp3.valid?
end