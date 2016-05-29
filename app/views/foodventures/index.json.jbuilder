json.array!(@foodventures) do |foodventure|
  json.extract! foodventure, :id, :date
  json.url foodventure_url(foodventure, format: :json)
end
