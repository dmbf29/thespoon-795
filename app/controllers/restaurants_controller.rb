class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:chef, :show, :edit, :update, :destroy]

  # /restaurants/top
  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  # /restaurants/:id/chef
  def chef
  end

  # /restaurants
  def index
    @restaurants = Restaurant.all
    # render index.html.erb
  end

  # /restaurants/1
  def show
  end

  # /restaurants/new
  def new
    # this empty instance is so the form can build
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      # if the restaurant doesn save, what should happen?
      # show the form again, what page was the form on?
      render 'new.html.erb'
    end
  end

  # /restaurants/1/edit
  def edit
    # this instance is so the form can build
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      # if it doesnt update, show the form again
      render 'edit.html.erb'
    end
  end

  def destroy
    # destroy the instance
    @restaurant.destroy
    # redirect somewhere
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
