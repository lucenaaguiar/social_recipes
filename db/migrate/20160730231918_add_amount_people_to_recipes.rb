class AddAmountPeopleToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :amount_people, :integer
  end
end
