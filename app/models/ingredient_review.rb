class IngredientReview < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  
  validates :safety_rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 0..10 }
  validates :efficacy_rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 0..10 }
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
end
