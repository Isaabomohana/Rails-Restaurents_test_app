class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration[5.0]
  def change
    add_column :resturants, :latitude, :float
    add_column :resturants, :longitude, :float
  end
end
