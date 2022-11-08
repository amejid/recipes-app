class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show
    recipe_test = Recipe.find(params[:id])
    unless recipe_test.user == current_user || recipe_test.public?
      flash[:alert] =
        'You do not have access to see details.'
      return redirect_to recipes_path
    end

    @recipe = Recipe.find(params[:id])
    @recipe_foods = RecipeFood.where(recipe_id: @recipe.id)
  end

  def create
    recipe = current_user.recipes.new(recipe_params)

    if recipe.save
      redirect_to recipes_path, notice: 'New recipe was successfully added.'
    else
      flash[:alert] = 'New Recipe adding Failed. Please try again.'
    end
  end

  def new
    @recipe = Recipe.new
  end

  def public
    'Public Recipes'
  end

  def general
    'General Shopping List'
  end

  def destroy
    recipe = Recipe.find(params[:id])

    unless recipe.user == current_user
      return flash[:alert] =
               'You do not have access to delete the Recipe belongs to other Users.'
    end

    if recipe.destroy
      flash[:notice] = 'Recipe was successfully deleted.'
    else
      flash[:alert] = 'Recipe deleting Failed. Please try again.'
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
