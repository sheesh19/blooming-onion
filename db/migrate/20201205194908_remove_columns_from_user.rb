class RemoveColumnsFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :benefits, :string
    remove_column :users, :oneliner, :string
    remove_column :users, :img, :string
    remove_column :users, :category, :string
    remove_column :users, :sub_category, :string  
  end
end
