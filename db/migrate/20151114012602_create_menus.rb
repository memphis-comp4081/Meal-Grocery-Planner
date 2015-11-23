class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.datetime :time
      t.integer :meal_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
