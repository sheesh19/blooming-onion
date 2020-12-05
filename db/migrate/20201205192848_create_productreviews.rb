class CreateProductreviews < ActiveRecord::Migration[6.0]
  def change
    create_table :productreviews do |t|
      t.string :title
      t.string :content
      t.integer :product_rating
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
