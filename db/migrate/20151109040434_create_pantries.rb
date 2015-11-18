class CreatePantries < ActiveRecord::Migration
  def change
    create_table :pantries do |t|
      t.decimal :quantity

      t.timestamps null: false
    end
  end
end
