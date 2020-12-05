class RemoveDescriptionFromBrand < ActiveRecord::Migration[6.0]
  def change
    remove_column :brands, :description, :string
  end
end
