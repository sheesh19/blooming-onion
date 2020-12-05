class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :benefits, :string
    add_column :users, :oneliner, :string
    add_column :users, :img, :string
    add_column :users, :category, :string
    add_column :users, :sub_category, :string  
  end
end
