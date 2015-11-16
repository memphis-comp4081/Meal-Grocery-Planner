class AddComponentToComponentsIngredients < ActiveRecord::Migration
  def change
    add_reference :components_ingredients, :component, index: true, foreign_key: true
  end
end
