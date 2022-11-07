class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show

  end

  def create

  end

  def new

  end

  def destroy

  end
end
