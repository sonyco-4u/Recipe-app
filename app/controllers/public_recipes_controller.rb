class PublicRecipesController < ApplicationController
  load_and_authorize_resource
  def index
    @public_recipes = Recipe.all
  end
end
