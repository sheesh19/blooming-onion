class AddColumnsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :benefits, :string
    add_column :products, :oneliner, :string
    add_column :products, :img, :string
    add_column :products, :category, :string
    add_column :products, :sub_category, :string  
  end
end
