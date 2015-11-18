class CreateComponentsIngredients < ActiveRecord::Migration
  def change
    create_table :components_ingredients do |t|

      t.timestamps null: false
    end
  end
end
