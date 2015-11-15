class AddUserToMealList < ActiveRecord::Migration
  def change
    add_reference :meal_lists, :user, index: true, foreign_key: true
  end
end
