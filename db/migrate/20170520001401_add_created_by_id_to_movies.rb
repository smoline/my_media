class AddCreatedByIdToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :created_by_id, :integer
  end
end
