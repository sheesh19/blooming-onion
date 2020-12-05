class ProductsController < ApplicationController
    def index
        if params[:query].present?
            @products = Product.product_and_brand_search(params[:query])
        elsif params[:tag].present?
            @products = Product.tagged_with(params[:tag])
        else
            @products = Product.all
        end
    end

    def show
        @product = Product.find(params[:id])
        @product_review = ProductReview.new
        @product_ingredients = ProductIngredient.where(product: @product)
    end

    private

    def product_params
        params.require(:product).permit(:title, :brand_id, :description, :average_product_rating_stars, :average_efficacy_rating_bar, :average_safety_rating_bar, tag_list: [])
    end
end
