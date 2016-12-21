# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(name: "La Lola", address: "1639 B Penafrancia St. Brgy. Valenzuela Makati City")
Restaurant.create(name: "Chili's", address: "1639 B Penafrancia St. Brgy. Valenzuela Makati City")
Restaurant.create(name: "Mamou", address: "1639 B Penafrancia St. Brgy. Valenzuela Makati City")
Restaurant.create(name: "Your Local", address: "1639 B Penafrancia St. Brgy. Valenzuela Makati City")
Restaurant.create(name: "Wildflour Cafe + Bakery", address: "1639 B Penafrancia St. Brgy. Valenzuela Makati City")
Restaurant.create(name: "Local", address: "1639 B Penafrancia St. Brgy. Valenzuela Makati City")
Restaurant.create(name: "The Wholesome Table", address: "1639 B Penafrancia St. Brgy. Valenzuela Makati City")
Foodventure.create(date: Date.new(2015,1,12))
Foodventure.create(date: Date.new(2015,11,5))
Foodventure.create(date: Date.new(2016,11,5))
Foodventure.create(date: Date.new(2017,11,5))
Foodventure.create(date: Date.new(2018,11,5))
Foodventure.create(date: Date.new(2019,11,5))
Foodventure.create(date: Date.new(2020,11,5))
Foodventure.create(date: Date.new(2021,11,5))
Foodventure.create(date: Date.new(2017,11,5))
Foodventure.create(date: Date.new(2018,11,5))
Foodventure.create(date: Date.new(2019,11,5))
Foodventure.create(date: Date.new(2020,11,5))
Foodventure.create(date: Date.new(2021,11,5))

FoodventureRestaurant.create(restaurant_id:4, foodventure_id:1) #your local
FoodventureRestaurant.create(restaurant_id:3, foodventure_id:1) #mamou
FoodventureRestaurant.create(restaurant_id:5, foodventure_id:2) #wildflour
FoodventureRestaurant.create(restaurant_id:1, foodventure_id:3)
FoodventureRestaurant.create(restaurant_id:4, foodventure_id:4)
FoodventureRestaurant.create(restaurant_id:3, foodventure_id:5)
FoodventureRestaurant.create(restaurant_id:1, foodventure_id:6)
FoodventureRestaurant.create(restaurant_id:2, foodventure_id:6)
FoodventureRestaurant.create(restaurant_id:5, foodventure_id:7)
FoodventureRestaurant.create(restaurant_id:4, foodventure_id:8)
FoodventureRestaurant.create(restaurant_id:3, foodventure_id:9)
FoodventureRestaurant.create(restaurant_id:1, foodventure_id:10)
FoodventureRestaurant.create(restaurant_id:2, foodventure_id:11)
FoodventureRestaurant.create(restaurant_id:6, foodventure_id:12)
FoodventureRestaurant.create(restaurant_id:7, foodventure_id:13)


# Dish.create(foodventure_restaurant_id: 1, name: "Torched Salmon Donburi", price: 540, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "I will marry this", verdict: "pak", photo: File.new("#{Rails.root}/app/assets/images/salmon-small.jpg"), cuisine: "Japanese", course: "Main", meal: "Lunch, Dinner",tag:"salmon, fish")
Dish.create(foodventure_restaurant_id: 1, name: "Torched Salmon Donburi", price: 540, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "pak", filename: "steak-small.jpg", cuisine: "Japanese", course: "Main", meal: "Lunch, Dinner",tag:"salmon, fish")
Dish.create(foodventure_restaurant_id: 1, name: "Tofu Steak and Eggs", price: 370, comment_e: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "palpak", filename: "tofu-small.jpg", cuisine: "American", course: "Main", meal: "Lunch, Dinner", tag:"tofu")
Dish.create(foodventure_restaurant_id: 2, name: "Angus Ribeye Steak", price: 1950, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "pak", course: "Main", meal: "Lunch, Dinner",tag: "steak, ribeye")
Dish.create(foodventure_restaurant_id: 2, name: "Angus Ribeye Steak", price: 1950, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "pak", filename: "steak-small.jpg", cuisine: "American", course: "Main", meal: "Lunch, Dinner",tag: "steak, ribeye")
Dish.create(foodventure_restaurant_id: 3, name: "Crispy Parmesan Churros", price: 240, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "pak", filename: "churros-small.jpg", cuisine: "Mexican", course: "Appetizer", meal: "Snacks",tag:"churros,parmesan,cheese")
Dish.create(foodventure_restaurant_id: 3, name: "Wildflour Breakfast", price: 240, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "palpak", filename: "breakfast-small.jpg", cuisine: "American", course: "Main", meal: "Breakfast",tag:"potatoes")
Dish.create(foodventure_restaurant_id: 3, name: "Tomato Soup", price: 240, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "pak", filename: "tomato-small.jpg", cuisine: "American", course: "Appetizer", meal: "Breakfast",tag:"tomato,soup")
Dish.create(foodventure_restaurant_id: 3, name: "Wildflour Breakfast", price: 240, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "palpak", filename: "breakfast-small.jpg", cuisine: "American", course: "Main", meal: "Breakfast",tag:"potatoes")

(3..15).each do |i|
  Dish.create(foodventure_restaurant_id: i, name: "Tofu Steak and Eggs", price: 370, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "palpak", filename: "tofu-small.jpg", cuisine: "American", course: "Main", meal: "Lunch, Dinner", tag:"tofu")
  Dish.create(foodventure_restaurant_id: i, name: "Angus Ribeye Steak", price: 1950, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "pak", filename: "steak-small.jpg", cuisine: "American", course: "Main", meal: "Lunch, Dinner",tag: "steak, ribeye")
  Dish.create(foodventure_restaurant_id: i, name: "Crispy Parmesan Churros", price: 240, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "pak", filename: "churros-small.jpg", cuisine: "Mexican", course: "Appetizer", meal: "Snacks",tag:"churros,parmesan,cheese")
  Dish.create(foodventure_restaurant_id: i, name: "Tomato Soup", price: 240, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "pak", filename: "tomato-small.jpg", cuisine: "American", course: "Appetizer", meal: "Breakfast",tag:"tomato,soup")
  Dish.create(foodventure_restaurant_id: i, name: "Torched Salmon Donburi", price: 540, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "pak", filename: "salmon-small.jpg", cuisine: "Japanese", course: "Main", meal: "Lunch, Dinner",tag:"salmon, fish")
  Dish.create(foodventure_restaurant_id: i, name: "Wildflour Breakfast", price: 240, comment_e: "Spicy jalapeno bacon ipsum dolor amet jowl t-bone pork belly tenderloin fatback. Kielbasa pork belly salami shank tenderloin kevin, t-bone sirloin venison leberkas boudin. Capicola salami meatball spare ribs, meatloaf flank pork chop frankfurter kielbasa prosciutto strip steak venison ribeye. ", comment_m: "Pig drumstick tri-tip kevin hamburger. Fatback bresaola prosciutto ham picanha. Pork loin pig pork belly kevin venison sausage chuck ham hock bresaola cupim frankfurter salami rump. Venison meatloaf boudin, jowl chuck sirloin meatball fatback filet mignon.", verdict: "palpak", filename: "breakfast-small.jpg", cuisine: "American", course: "Main", meal: "Breakfast",tag:"potatoes")
end
