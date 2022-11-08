class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show; end

  def create; end

  def new; end

  def destroy; end

  def public
    'Public Recipes'
  end

  def general
    'General Shopping List'
  end
end
