class RemoveKitchenTypeRefToRecipe < ActiveRecord::Migration[5.0]
  def change
    remove_reference :recipes, :kithen_type, foreign_key: true
  end
end
