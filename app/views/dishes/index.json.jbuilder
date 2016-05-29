json.array!(@dishes) do |dish|
  json.extract! dish, :id, :foodventure_restaurant_id, :name, :price, :comment_e, :comment_m, :verdict
  json.url dish_url(dish, format: :json)
end
