class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(description_params)
    @dose.cocktail = @cocktail

    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def description_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
