require 'rails_helper'

feature 'Visitor visit home' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_css('h1', text: 'SocialRecipes')
  end

  scenario 'and view all recipes' do
    create(:kitchen_type, name: 'Italiana')
    create(:food_type, name: 'Sobremesa')

    recipe1 = create(:recipe)
    recipe2 = create(:recipe, name: 'Bolo de Laranja')
    recipe3 = create(:recipe, name: 'Bolo de Fubá')

    recipes = [recipe1, recipe2, recipe3]

    visit root_path

    recipes.each do |recipe|
      expect(page).to have_content(recipe.name)
      expect(page).to have_content(recipe.kitchen_type.name)
      expect(page).to have_content(recipe.food_type.name)
      expect(page).to have_content(recipe.preparation_time)
      expect(page).to have_content(recipe.preparation_level)
    end
  end
end
