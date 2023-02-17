class RecipefoodsController < ApplicationController
  before_action :set_recipefood, only: %i[show edit update destroy]
  # GET /recipefoods or /recipefoods.json
  def index
    @recipefoods = Recipefood.all
  end
end
