class AddIngredientToComponentsIngredients < ActiveRecord::Migration
  def change
    add_reference :components_ingredients, :ingredient, index: true, foreign_key: true
  end
end
