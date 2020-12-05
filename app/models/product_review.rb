class ProductReview < ApplicationRecord
  SKIN_CONCERNS = [ "Sun damage", "Pigmentation", "Fine lines and wrinkles", "Sensitivity", "Breakouts/Acne", "Dullness", "Elasticity", "Rosacea", "Enlarged Pores", "Excessive Oiliness", "Dryness", "Eczema", "Allergies", "Psoriasis", "Hives", "Dermatitis"]

  belongs_to :user
  belongs_to :product
  
  validates :title, presence: true
  validates :content, presence: true
  validates :product_rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 0..5 }  
end
