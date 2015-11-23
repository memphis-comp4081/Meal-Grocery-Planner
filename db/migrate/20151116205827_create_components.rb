class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :description
      t.string :instructions

      t.timestamps null: false
    end
  end
end
