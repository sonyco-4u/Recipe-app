class Food < ApplicationRecord
  has_many :recipe_foods, dependent: :destroy
  belongs_to :user, foreign_key: :user_id
end
