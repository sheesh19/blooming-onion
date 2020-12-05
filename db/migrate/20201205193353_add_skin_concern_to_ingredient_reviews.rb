class AddSkinConcernToIngredientReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredient_reviews, :skin_concern, :string
  end
end
