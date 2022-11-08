Rails.application.routes.draw do
  devise_for :users

  root to: 'recipes#index'

  resources :recipes, except: [:edit, :update]
  resources :foods, except: [:edit, :update]

  get '/public_recipes', to: 'recipes#public'
  get '/general_shopping_list', to: 'recipes#general'
end
