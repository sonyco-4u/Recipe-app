class Recipe < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :recipe_foods, dependent: :destroy

  def list_all_public_recipes
    public_recipes.order('created_at ASC')
  end

  def total_food_items
    food.size
  end
end
