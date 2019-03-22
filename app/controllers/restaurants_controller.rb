class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @pizza = Pizza.find(params[:id])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = Pizza.all
  end

end
