class KitchenType < ApplicationRecord
  validates :name, presence: true

  has_many :recipes
end
