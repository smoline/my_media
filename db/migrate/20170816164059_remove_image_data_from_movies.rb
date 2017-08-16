class RemoveImageDataFromMovies < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :image_data, :text
  end
end
