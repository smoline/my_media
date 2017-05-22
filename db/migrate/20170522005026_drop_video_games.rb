class DropVideoGames < ActiveRecord::Migration[5.0]
  def change
    drop_table :video_games
  end
end
