class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :f_name
      t.string :l_name

      t.timestamps null: false
    end
  end
end
