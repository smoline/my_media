class AddGameImageUrlToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :game_image_url, :string
  end
end
