class RecipesController < ApplicationController
  def index
  	@keyword = params[:search] || 'chocolate'
  	@Recipes = Recipe.for(@keyword)
  end
end
