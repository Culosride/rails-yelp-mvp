class RestaurantsController < ApplicationController
  before_action :select_rest, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
  end

  def create
    @restaurant = restaurant.new(rest_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def select_rest
    @restaurant = Restaurant.find(params[:id])
  end
end
