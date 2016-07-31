require 'rails_helper'

feature 'User create recipes' do
  scenario 'Successfully' do
    create(:kitchen_type, name: 'Italiana')

    visit new_recipe_path

    fill_in 'Nome', with: 'Bolo de cenoura'
    select 'Italiana', from: 'Cozinha'
    fill_in 'Tipo de Comida', with: 'Doce'
    fill_in 'Pessoas', with: 8
    fill_in 'Tempo de Preparo', with: '1 hora'
    fill_in 'Nível de Dificuldade', with: 'Fácil'
    fill_in 'Ingredientes', with: 'Ingredientes'
    fill_in 'Passo a passo', with: 'Passo a passo'

    within '//form' do
      click_on 'Cadastrar Receita'
    end

    expect(page).to have_content 'Bolo de cenoura'
    expect(page).to have_content 'Cozinha'
    expect(page).to have_content 'Doce'
    expect(page).to have_content '8'
    expect(page).to have_content '1 hora'
    expect(page).to have_content 'Fácil'
    expect(page).to have_content 'Ingredientes'
    expect(page).to have_content 'Passo a passo'
  end

  scenario 'With invalid data' do
    visit new_recipe_path

    fill_in 'Nome', with: ''
    select '', from: 'Cozinha'
    fill_in 'Tipo de Comida', with: ''
    fill_in 'Pessoas', with: ''
    fill_in 'Tempo de Preparo', with: ''
    fill_in 'Nível de Dificuldade', with: ''
    fill_in 'Ingredientes', with: ''
    fill_in 'Passo a passo', with: ''

    within '//form' do
      click_on 'Cadastrar Receita'
    end

    expect(page).to have_content 'Não foi possível cadastrar a receita.'
  end
end
