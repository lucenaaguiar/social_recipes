require 'rails_helper'

feature 'User create kitchen_type' do
  scenario 'successfully' do
    visit new_kitchen_type_path

    fill_in 'Nome', with: 'Italiana'

    click_on 'Cadastrar Cozinha'

    expect(page).to have_content 'Italiana'
  end
  scenario 'with invalid data' do
    visit new_kitchen_type_path

    fill_in 'Nome', with: ''

    click_on 'Cadastrar Cozinha'

    expect(page).to have_content 'Não foi possível cadastrar nova cozinha'
  end
end
