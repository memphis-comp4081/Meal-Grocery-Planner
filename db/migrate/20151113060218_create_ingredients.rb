class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|

      t.string :description
	  t.string :unit_of_measure
      t.timestamps null: false
    end
  end
end
