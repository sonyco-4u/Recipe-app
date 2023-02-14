class Recipefood < ApplicationRecord
  belongs_to :food, foreign_key: :food_id
end
