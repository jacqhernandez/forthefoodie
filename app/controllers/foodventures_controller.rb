class FoodventuresController < ApplicationController
  before_action :set_foodventure, only: [:show, :edit, :update, :destroy]

  # GET /foodventures
  # GET /foodventures.json
  def index
    @foodventures = Foodventure.paginate(page: params[:page], per_page: 3).order('created_at DESC')
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /foodventures/1
  # GET /foodventures/1.json
  def show
  end

  # GET /foodventures/new
  def new
    @foodventure = Foodventure.new
  end

  # GET /foodventures/1/edit
  def edit
  end

  # POST /foodventures
  # POST /foodventures.json
  def create
    @foodventure = Foodventure.new(foodventure_params)

    respond_to do |format|
      if @foodventure.save
        format.html { redirect_to @foodventure, notice: 'Foodventure was successfully created.' }
        format.json { render :show, status: :created, location: @foodventure }
      else
        format.html { render :new }
        format.json { render json: @foodventure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodventures/1
  # PATCH/PUT /foodventures/1.json
  def update
    respond_to do |format|
      if @foodventure.update(foodventure_params)
        format.html { redirect_to @foodventure, notice: 'Foodventure was successfully updated.' }
        format.json { render :show, status: :ok, location: @foodventure }
      else
        format.html { render :edit }
        format.json { render json: @foodventure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodventures/1
  # DELETE /foodventures/1.json
  def destroy
    @foodventure.destroy
    respond_to do |format|
      format.html { redirect_to foodventures_url, notice: 'Foodventure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodventure
      @foodventure = Foodventure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foodventure_params
      params.require(:foodventure).permit(:date)
    end
end
