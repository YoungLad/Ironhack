class IngredientsController < ApplicationController
  def create 
    ingredient = Ingredient.create(ingredient_params)
    render json: ingredient
  end 

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :calories)
  end 

  def destroy 
    ingredient = Ingredient.find_by(:id: params[:id])
    unless ingredient
      render json:{ error: "ingredient not found"}, status: 404
      return
  end 

  def show
  ingredient = Ingredient.find_by(:id: params[:id])
    unless ingredient
      render json: {error: "Ingredient not found"}, status:404
      return
    end 
    render json: ingredient
  end  
end
