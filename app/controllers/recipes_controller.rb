class RecipesController < ApplicationController
  
  def index
    render json: Recipe.all
  end

  def create
    recipe = @current_user.recipes.create!(recipe_params)
    render json: recipe, status: :created
  end

  private

  def recipe_params
    params.permit(:title, :instructions, :genre, :time_of_day, :image)
  end

end
