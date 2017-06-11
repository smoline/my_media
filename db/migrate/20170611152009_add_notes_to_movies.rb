class AddNotesToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :notes, :string
  end
end
