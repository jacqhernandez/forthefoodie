class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :foodventure_restaurant_id
      t.string :name
      t.decimal :price
      t.text :comment_e
      t.text :comment_m
      t.string :verdict
      t.string :cuisine
      t.string :course
      t.string :meal
      t.string :tag

      t.timestamps null: false
    end
  end
end
