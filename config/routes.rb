# frozen_string_literal: true

Rails.application.routes.draw do
  get 'recipe_foods/index'
  get 'recipe_foods/show'
  get 'recipe_foods/create'
  get 'recipe_foods/new'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/create'
  get 'recipes/new'
  get 'users/index'
  get 'users/show'
  get 'users/create'
  get 'users/new'
  get 'foods/index'
  get 'foods/show'
  get 'foods/create'
  get 'foods/new'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
