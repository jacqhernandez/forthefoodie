require 'test_helper'

class FoodventureRestaurantsControllerTest < ActionController::TestCase
  setup do
    @foodventure_restaurant = foodventure_restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodventure_restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodventure_restaurant" do
    assert_difference('FoodventureRestaurant.count') do
      post :create, foodventure_restaurant: { foodventure_id: @foodventure_restaurant.foodventure_id, restaurant_id: @foodventure_restaurant.restaurant_id }
    end

    assert_redirected_to foodventure_restaurant_path(assigns(:foodventure_restaurant))
  end

  test "should show foodventure_restaurant" do
    get :show, id: @foodventure_restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foodventure_restaurant
    assert_response :success
  end

  test "should update foodventure_restaurant" do
    patch :update, id: @foodventure_restaurant, foodventure_restaurant: { foodventure_id: @foodventure_restaurant.foodventure_id, restaurant_id: @foodventure_restaurant.restaurant_id }
    assert_redirected_to foodventure_restaurant_path(assigns(:foodventure_restaurant))
  end

  test "should destroy foodventure_restaurant" do
    assert_difference('FoodventureRestaurant.count', -1) do
      delete :destroy, id: @foodventure_restaurant
    end

    assert_redirected_to foodventure_restaurants_path
  end
end
