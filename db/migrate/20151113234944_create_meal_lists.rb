class CreateMealLists < ActiveRecord::Migration
  def change
    create_table :meal_lists do |t|
      t.integer :user_id
      t.integer :meal_id

      t.timestamps null: false
    end
  end
end
