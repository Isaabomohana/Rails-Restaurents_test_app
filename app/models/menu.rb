class Menu < ApplicationRecord
  belongs_to :resturant, foreign_key: :restaurent_id
end
