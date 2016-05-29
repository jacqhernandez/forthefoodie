json.array!(@foodventure_restaurants) do |foodventure_restaurant|
  json.extract! foodventure_restaurant, :id, :foodventure_id, :restaurant_id
  json.url foodventure_restaurant_url(foodventure_restaurant, format: :json)
end
