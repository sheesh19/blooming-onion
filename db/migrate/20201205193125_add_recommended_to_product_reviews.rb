class AddRecommendedToProductReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :product_reviews, :recommended, :boolean
  end
end
