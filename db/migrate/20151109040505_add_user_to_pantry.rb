class AddUserToPantry < ActiveRecord::Migration
  def change
    add_reference :pantries, :user, index: true, foreign_key: true
  end
end
