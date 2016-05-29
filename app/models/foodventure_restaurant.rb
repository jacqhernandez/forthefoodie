class FoodventureRestaurant < ActiveRecord::Base
  belongs_to :foodventure
  belongs_to :restaurant
  has_many :dishes
end
