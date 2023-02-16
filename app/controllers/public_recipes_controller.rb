class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.all
  end
end
