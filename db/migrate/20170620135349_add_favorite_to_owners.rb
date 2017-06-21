class AddFavoriteToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :favorite, :boolean
  end
end
