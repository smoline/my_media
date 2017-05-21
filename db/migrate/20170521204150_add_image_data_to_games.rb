class AddImageDataToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :image_data, :text
  end
end
