class RemoveNotesFromMovies < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :notes, :string
  end
end
