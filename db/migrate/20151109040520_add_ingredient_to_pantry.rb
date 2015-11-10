class AddIngredientToPantry < ActiveRecord::Migration
  def change
    add_reference :pantries, :ingredient, index: true, foreign_key: true
  end
end
