class AddLngAndLatToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :lng, :float
    add_column :dishes, :lat, :float
  end
end
