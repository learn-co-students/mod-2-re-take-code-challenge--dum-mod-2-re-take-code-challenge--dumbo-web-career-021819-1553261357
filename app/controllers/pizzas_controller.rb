class PizzasController < ApplicationController

  before_action :get_pizza, only: [:show]

  def index
    @pizzas = Pizza.all
  end
  def show
    pizzas = Pizza.all
  end

  def new
    @pizzas = Pizza.all
    @pizza = Pizza.new
  end
  def create
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
      redirect_to @pizza
    else
      flash[:error] = @pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end
  private

  def get_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
