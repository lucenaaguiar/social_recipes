class Recipe < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, :kitchen_type_id, :food_type, :ingredients, :steps,
            presence: true

  belongs_to :kitchen_type
end
