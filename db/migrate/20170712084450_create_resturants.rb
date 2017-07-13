class CreateResturants < ActiveRecord::Migration[5.0]
  def change
    create_table :resturants do |t|
      t.string :name
      t.string :address
      t.string :food
      t.string :info

      t.timestamps
    end
  end
end
