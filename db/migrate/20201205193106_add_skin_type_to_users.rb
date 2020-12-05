class AddSkinTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :skin_type, :string
  end
end
