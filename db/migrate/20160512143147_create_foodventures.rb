class CreateFoodventures < ActiveRecord::Migration
  def change
    create_table :foodventures do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end
