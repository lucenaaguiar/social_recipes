class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      flash.now[:notice] = 'Não foi possível cadastrar a receita.'
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :kitchen_type, :food_type,
                                   :amount_people, :preparation_time,
                                   :preparation_level, :ingredients, :steps)
  end
end
