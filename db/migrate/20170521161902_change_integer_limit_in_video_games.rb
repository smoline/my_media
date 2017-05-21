class ChangeIntegerLimitInVideoGames < ActiveRecord::Migration[5.0]
  def change
    change_column :video_games, :upc, :integer, limit: 8
  end
end
