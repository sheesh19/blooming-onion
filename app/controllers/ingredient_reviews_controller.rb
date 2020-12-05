class IngredientReviewsController < ApplicationController
    
    def index
        @ingredient_reviews = IngredientReview.all
    end
    
    def create
        @ingredient_review = IngredientReview.new(ingredient_review_params)
        @ingredient = Ingredient.find(params[:ingredient_id])
        @user = current_user
        @ingredient_review.user_id = @user.id
        @ingredient_review.ingredient_id = @ingredient.id
        if @ingredient_review.save
            redirect_to ingredient_path(@ingredient)
        else
            redirect_to ingredient_path(@ingredient), notice: "Review could not be created"
        end
    end
    
      private
    
    def ingredient_review_params
        params.require(:ingredient_review).permit(:title, :content, :supporting_evidence, :safety_rating, :efficacy_rating, :skin_concern)
    end
end
