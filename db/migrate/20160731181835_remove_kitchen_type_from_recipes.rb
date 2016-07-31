class RemoveKitchenTypeFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :kitchen_type, :string
  end
end
