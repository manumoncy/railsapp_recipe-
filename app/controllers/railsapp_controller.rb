class RailsappController < ApplicationController
  def index
  	@search_term = 'arabic'
  	@recipes = Recipe.search_recipe(@search_term)['hits']
  end

  def details
  	@search_term = params[:recipe_id]
  	@recipe = Recipe.details(@search_term)[0]
  end
end
