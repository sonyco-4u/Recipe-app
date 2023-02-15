class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.decimal :preparation_time, precision: 5, scale: 2
      t.decimal :cooking_time, precision: 5, scale: 2
      t.text :description
      t.boolean :public
      t.timestamps
    end
  end
end

