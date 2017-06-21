class RemoveFavoriteFromOwners < ActiveRecord::Migration[5.0]
  def change
    remove_column :owners, :favorite, :boolean
  end
end
