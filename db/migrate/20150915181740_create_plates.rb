class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :plate_number
      t.string :plate_state
     

      t.timestamps null: false
    end
  end
end
