class AddUserToDatum < ActiveRecord::Migration
  def change
    add_reference :data, :user, index: true, foreign_key: true
  end
end
