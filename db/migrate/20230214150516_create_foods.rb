class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_unit
      t.decimal :price, precision: 8, scale: 2
      t.integer :quantity
      t.timestamps
    end
  end
end
