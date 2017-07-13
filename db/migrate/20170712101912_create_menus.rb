class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :dish_name
      t.integer :restaurent_id
      t.string :ingredients

      t.timestamps
    end
  end
end
