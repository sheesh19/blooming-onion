class CreateIngredientreviews < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredientreviews do |t|
      t.integer :safety_rating
      t.integer :efficacy_rating
      t.string :title
      t.string :content
      t.string :supporting_evidence
      t.references :user, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
