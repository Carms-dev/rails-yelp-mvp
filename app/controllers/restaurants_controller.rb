class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def create
    @restaurant = Restaurant.new(resto_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def edit
  end

  def update
    if @restaurant.update(resto_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def resto_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
