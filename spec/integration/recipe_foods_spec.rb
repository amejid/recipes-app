require 'rails_helper'

RSpec.describe 'RecipeFood', type: :system, js: true do
  describe 'table in the recipe show page' do
    before(:example) do
      @user = User.create(name: 'Rex', email: 'rex@mail.com', password: '123456')
      sign_in @user

      @food = Food.create(user: @user, name: 'Apple', measurement_unit: "kg", quantity: 1, price: 10)
      @recipe = Recipe.create(user: @user, name: 'Apple Pie', preparation_time: 2, cooking_time: 1,
                              description: 'Nice food wow', public: true)
      @recipe_food = RecipeFood.create(recipe: @recipe, food: @food, quantity: 1)
      visit recipe_path(@recipe)
    end

    it 'renders name of food in ingredient' do
      expect(page).to have_content(@recipe_food.food.name)
    end

    it 'renders quantity of food in ingredient' do
      expect(page).to have_content(@recipe_food.quantity)
    end

    it 'renders total price of the food of ingredent' do
      expect(page).to have_content(@recipe_food.quantity * @recipe_food.food.price)
    end

    it 'renders remove button' do
      expect(page).to have_content('Remove')
    end

    it 'redirects to add ingredient page' do
      click_link 'Remove'
      expect(page).to not have_current_path(recipe_path(@recipe))
      expect(page).to not have_content(@recipe_food.food.name)
      expect(page).to not have_content(@recipe_food.quantity)
      expect(page).to not have_content(@recipe_food.quantity * @recipe_food.food.price)
    end
  end
end
