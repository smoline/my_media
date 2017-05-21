class ChangeIntegerLimitInGames < ActiveRecord::Migration[5.0]
  def change
    change_column :games, :upc, :integer, limit: 8
  end
end
