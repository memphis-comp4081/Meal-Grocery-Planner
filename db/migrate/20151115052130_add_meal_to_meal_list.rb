class AddMealToMealList < ActiveRecord::Migration
  def change
    add_reference :meal_lists, :meal, index: true, foreign_key: true
  end
end
