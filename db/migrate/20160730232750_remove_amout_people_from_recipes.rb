class RemoveAmoutPeopleFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :amout_people, :integer
  end
end
