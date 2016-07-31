class KitchenTypesController < ApplicationController
  def show
    @kitchen_type = KitchenType.find(params[:id])
  end

  def new
    @kitchen_type = KitchenType.new
  end

  def create
    @kitchen_type = KitchenType.new(params.require(:kitchen_type).permit(:name))
    if @kitchen_type.save
      redirect_to @kitchen_type
    else
      flash.now[:notice] = 'Não foi possível cadastrar nova cozinha'
      render :new
    end
  end
end
