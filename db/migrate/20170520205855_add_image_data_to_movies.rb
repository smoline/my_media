class AddImageDataToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :image_data, :text
  end
end
