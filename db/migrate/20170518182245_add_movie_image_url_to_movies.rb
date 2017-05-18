class AddMovieImageUrlToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :movie_image_url, :string
  end
end
