class CreateFoodventureRestaurants < ActiveRecord::Migration
  def change
    create_table :foodventure_restaurants do |t|
      t.integer :foodventure_id
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
