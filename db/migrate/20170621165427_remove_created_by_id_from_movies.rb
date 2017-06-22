class RemoveCreatedByIdFromMovies < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :created_by_id, :integer
  end
end
