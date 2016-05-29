class FoodventureRestaurantsController < ApplicationController
  before_action :set_foodventure_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /foodventure_restaurants
  # GET /foodventure_restaurants.json
  def index
    @foodventure_restaurants = FoodventureRestaurant.all
  end

  # GET /foodventure_restaurants/1
  # GET /foodventure_restaurants/1.json
  def show
  end

  # GET /foodventure_restaurants/new
  def new
    @foodventure_restaurant = FoodventureRestaurant.new
  end

  # GET /foodventure_restaurants/1/edit
  def edit
  end

  # POST /foodventure_restaurants
  # POST /foodventure_restaurants.json
  def create
    @foodventure_restaurant = FoodventureRestaurant.new(foodventure_restaurant_params)

    respond_to do |format|
      if @foodventure_restaurant.save
        format.html { redirect_to @foodventure_restaurant, notice: 'Foodventure restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @foodventure_restaurant }
      else
        format.html { render :new }
        format.json { render json: @foodventure_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodventure_restaurants/1
  # PATCH/PUT /foodventure_restaurants/1.json
  def update
    respond_to do |format|
      if @foodventure_restaurant.update(foodventure_restaurant_params)
        format.html { redirect_to @foodventure_restaurant, notice: 'Foodventure restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @foodventure_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @foodventure_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodventure_restaurants/1
  # DELETE /foodventure_restaurants/1.json
  def destroy
    @foodventure_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to foodventure_restaurants_url, notice: 'Foodventure restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodventure_restaurant
      @foodventure_restaurant = FoodventureRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foodventure_restaurant_params
      params.require(:foodventure_restaurant).permit(:foodventure_id, :restaurant_id)
    end
end
