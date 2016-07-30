class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :kitchen_type
      t.string :food_type
      t.integer :amout_people
      t.string :preparation_time
      t.string :preparation_level
      t.text :ingredients
      t.text :steps

      t.timestamps
    end
  end
end
