class Recipe < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, :kitchen_type_id, :food_type_id, :ingredients, :steps,
            presence: true

  belongs_to :kitchen_type
  belongs_to :food_type
end
