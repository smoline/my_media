class AddBrandToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :brand, :string
  end
end
