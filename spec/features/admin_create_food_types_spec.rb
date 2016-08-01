require 'rails_helper'

feature 'Admin create food types' do
  scenario 'Successfully' do
    visit new_food_type_path

    fill_in 'Nome', with: 'Entrada'

    click_on 'Cadastrar Tipo'

    expect(page).to have_content 'Entrada'
  end

  scenario 'with invalid data' do
    visit new_food_type_path

    fill_in 'Nome', with: ''

    click_on 'Cadastrar Tipo'

    expect(page).to have_content 'Não foi possível cadastrar novo tipo'
  end
end
