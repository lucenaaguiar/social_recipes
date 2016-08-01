require 'rails_helper'

feature 'User view last recipes' do
  scenario 'Successfully' do
    create(:kitchen_type, name: 'Italiana')
    create(:food_type, name: 'Sobremesa')
    recipe = create(:recipe, name: 'Torta de morango', created_at: DateTime.now)
    recipe1 = create(:recipe, name: 'Torta de morango', created_at: DateTime.now - 2)
    recipe2 = create(:recipe, name: 'Gelatina', created_at: DateTime.now + 2)
    #create_list(:recipe, 20)

    visit root_path


    #expect(page.find('section panel:last-child a')).to have_content recipe1.name
    #puts page.html
    within('section p:nth-child(1)') do
      expect(page).to have_css('h1', text: recipe1.name)
    #  expect(page).to have_css('h1', text: recipe2.name)
    #  expect(page).to have_css('h1', text: recipe1.name)
    end
  end
end
