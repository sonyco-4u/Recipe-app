class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /recipes or /recipes.json
  def index
    @recipes = current_user.recipes
  end

  # GET /recipes/1 or /recipes/1.json

  def show
    @recipes = set_recipe
    @foods = current_user.foods
  end

  def create
    add_recipe = current_user.recipes.new(recipe_params)
    if add_recipe.save
      redirect_to '/recipes', notice: 'Recipe was successfully added.'
    else
      render :new, alert: 'Failed to add recipe'
    end
  end

  def destroy
    @recipe = set_recipe
    @recipe.delete
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipes was deleted successfully.' }
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
