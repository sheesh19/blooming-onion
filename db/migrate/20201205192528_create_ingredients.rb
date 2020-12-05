class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :average_safety_rating
      t.float :average_efficacy_rating
      t.string :description

      t.timestamps
    end
  end
end
