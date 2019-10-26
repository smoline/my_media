class RemoveImageDataFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :image_data, :text

    drop_table :files
  end
end
