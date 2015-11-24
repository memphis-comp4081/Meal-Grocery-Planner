class AddMealToComponents < ActiveRecord::Migration
  def change
    add_reference :components, :meal, index: true, foreign_key: true
  end
end
