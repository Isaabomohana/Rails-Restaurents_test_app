class Resturant < ApplicationRecord
  has_many :menus, dependent: :destroy
  geocoded_by :address
  after_validation :geocode
  seems_rateable 
end
