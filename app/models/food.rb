# frozen_string_literal: true

class Food < ApplicationRecord
  has_many :recipe_foods
  belongs_to :user, foreign_key: :user_id
end
