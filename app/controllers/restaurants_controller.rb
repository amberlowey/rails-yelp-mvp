class RestaurantsController < ApplicationController
  before_action :select, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    #@reviews = Reviews.where(params[:restaurant_id == :id])
    #Review.where(restaurant_id: params[:id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def select
    @restaurant = Restaurant.find(params[:id])
  end
end
