class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.float :average_product_rating_stars
      t.float :average_safety_rating_bar
      t.float :average_efficacy_rating_bar
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
