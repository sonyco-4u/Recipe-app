# frozen_string_literal: true

class Recipefood < ApplicationRecord
  belongs_to :food, foreign_key: :food_id
  belongs_to :recipe, foreign_key: :recipe_id
end
