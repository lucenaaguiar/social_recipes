class RecipesController < ApplicationController
  before_action :all_kitchen_types, only: [:new, :create]

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.photo = params[:recipe][:photo]
    if @recipe.save
      redirect_to @recipe
    else
      flash.now[:notice] = 'Não foi possível cadastrar a receita.'
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :kitchen_type_id, :food_type,
                                   :amount_people, :preparation_time,
                                   :preparation_level, :ingredients, :steps)
  end

  def all_kitchen_types
    @kitchen_types = KitchenType.all
  end
end
