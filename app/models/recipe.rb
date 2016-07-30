class Recipe < ApplicationRecord
  validates :name, :kitchen_type, :food_type, :ingredients, :steps,
            presence: true
end
