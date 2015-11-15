class CreateMealLists < ActiveRecord::Migration
  def change
    create_table :meal_lists do |t|

      t.timestamps null: false
    end
  end
end
