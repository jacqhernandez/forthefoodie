require 'test_helper'

class FoodventuresControllerTest < ActionController::TestCase
  setup do
    @foodventure = foodventures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodventures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodventure" do
    assert_difference('Foodventure.count') do
      post :create, foodventure: { date: @foodventure.date }
    end

    assert_redirected_to foodventure_path(assigns(:foodventure))
  end

  test "should show foodventure" do
    get :show, id: @foodventure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foodventure
    assert_response :success
  end

  test "should update foodventure" do
    patch :update, id: @foodventure, foodventure: { date: @foodventure.date }
    assert_redirected_to foodventure_path(assigns(:foodventure))
  end

  test "should destroy foodventure" do
    assert_difference('Foodventure.count', -1) do
      delete :destroy, id: @foodventure
    end

    assert_redirected_to foodventures_path
  end
end
