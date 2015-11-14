class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :component_id
      t.string :description

      t.timestamps null: false
    end
  end
end
