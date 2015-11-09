class CreatePantries < ActiveRecord::Migration
  def change
    create_table :pantries do |t|
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
