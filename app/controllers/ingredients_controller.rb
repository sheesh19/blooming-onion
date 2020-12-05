class IngredientsController < ApplicationController
    def index
        if params[:query].present?
            @ingredients = Ingredient.search_by_name_and_description(params[:query])
        else
            @ingredients = Ingredient.all
        end
    end
    
    def show
        @ingredient = Ingredient.find(params[:id])
        @ingredient_review = IngredientReview.new
    end
end
