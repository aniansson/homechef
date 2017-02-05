class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.float :price
      t.datetime :readytime
      t.integer :portions

      t.timestamps
    end
  end
end
