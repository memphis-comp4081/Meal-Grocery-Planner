class AddComponentsToMeals < ActiveRecord::Migration
  def change
  	create_join_table :meals, :components
  end
end
