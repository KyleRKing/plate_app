class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :plate_number
      t.string :plate_state
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
