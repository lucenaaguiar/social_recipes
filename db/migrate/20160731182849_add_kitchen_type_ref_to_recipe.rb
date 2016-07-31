class AddKitchenTypeRefToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipes, :kitchen_type, foreign_key: true
  end
end
