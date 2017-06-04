class AddIgdbIdToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :igdb_id, :integer
  end
end
