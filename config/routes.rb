Rails.application.routes.draw do
  devise_for :users

  resources :recipes, except: [:edit, :update]
  resources :foods, only: :index

  root to: 'recipes#index'
  get '/public_recipes', to: 'recipes#public'
  get '/general_shopping_list', to: 'recipes#general'
end
