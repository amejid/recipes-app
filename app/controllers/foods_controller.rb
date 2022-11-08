class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new

  end

  def create
    @food = Food.new(food_params)
  end

  def destroy

  end
end