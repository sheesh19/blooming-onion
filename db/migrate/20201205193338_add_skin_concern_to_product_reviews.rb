class AddSkinConcernToProductReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :product_reviews, :skin_concern, :string
  end
end
