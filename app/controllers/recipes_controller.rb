class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy]
  # GET /recipes or /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1 or /recipes/1.json

  def show
    @user = User.find(params[:id])
    @recipe = @user.recipes.find(params[:id])
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end
end
