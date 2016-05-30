class PagesController < ApplicationController
  def index
    @dishes = Dish.all.limit(7)
  end

  def about
  end

  def results
    if params[:restaurant].present?
      @category = "restaurant"
      @query = params[:restaurant]
      #for postgresql
      #sql = "SELECT a.*, CASE WHEN upper(c.name) = upper('#{@query}') THEN 2 ELSE 1 END AS score FROM dishes a LEFT JOIN foodventure_restaurants b ON a.foodventure_restaurant_id = b.id LEFT JOIN restaurants c ON b.restaurant_id = c.id WHERE c.name ILIKE '%#{@query}%' ORDER BY score DESC;"
      dishes1 = Dish.joins(:foodventure_restaurant).merge(FoodventureRestaurant.joins(:restaurant).merge(Restaurant.where("lower(restaurants.name) = ?", @query.downcase)))
      dishes2 = Dish.joins(:foodventure_restaurant).merge(FoodventureRestaurant.joins(:restaurant).merge(Restaurant.where("restaurants.name ILIKE ?", "%#{@query}%")))
      @pages = ((dishes1 + dishes2).uniq).paginate(page: params[:page], per_page: 9)
    elsif params[:cuisine].present?
      @category = "cuisine"
      @query = params[:cuisine].titleize
      @pages = Dish.where("cuisine LIKE ?", "%#{@query}%").paginate(page: params[:page], per_page: 9).order('created_at DESC')
    elsif params[:course].present?
      @category = "course"
      @query = params[:course].titleize
      @pages = Dish.where(course: @query.titleize).paginate(page: params[:page], per_page: 9).order('created_at DESC')
    elsif params[:meal].present?
      @category = "meal"
      @query = params[:meal].titleize
      @pages = Dish.where("meal LIKE ?", "%#{@query}%").paginate(page: params[:page], per_page: 9).order('created_at DESC')
    elsif params[:dish].present?
      @category = "dish"
      @query = params[:dish]
      @pages = Dish.where("(name ILIKE ?) OR (tag ILIKE ?)", "%#{@query}%", "%#{@query}%").paginate(page: params[:page], per_page: 9).order('created_at DESC')
    elsif params[:price].present?
      @category = "price range"
      if params[:price] == "1"
        @query = "P150 and below"
        @pages = Dish.where("price <= 150").paginate(page: params[:page], per_page: 9).order('created_at DESC')
      elsif params[:price] == "2"
        @query = "P151-P300"
        @pages = Dish.where("(price >= 151) AND (price <= 300)").paginate(page: params[:page], per_page: 9).order('created_at DESC')
      elsif params[:price] == "3"
        @query = "P301-P450"
        @pages = Dish.where("(price >= 301) AND (price <= 450)").paginate(page: params[:page], per_page: 9).order('created_at DESC')
      elsif params[:price] == "4"
        @query = "P451-P999"
        @pages = Dish.where("(price >= 451) AND (price <= 999)").paginate(page: params[:page], per_page: 9).order('created_at DESC')
      else
        @query = "P1000 and above"
        @pages = Dish.where("(price >= 1000)").paginate(page: params[:page], per_page: 9).order('created_at DESC')
      end
    else
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
  #check uppercase

end
