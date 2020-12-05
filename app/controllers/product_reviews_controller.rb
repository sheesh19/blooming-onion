class ProductReviewsController < ApplicationController
    def create
        @product_review = ProductReview.new(product_review_params)
        @product = Product.find(params[:product_id])
        @user = current_user
        @product_review.user_id = @user.id
        @product_review.product_id = @product.id
        if @product_review.save
            redirect_to product_path(@product)
        else
            redirect_to product_path(@product), notice: "Review could not be created"
        end
    end
    
      private
    
    def product_review_params
        params.require(:product_review).permit(:title, :content, :product_rating, :recommended, :skin_concern)
    end
end
