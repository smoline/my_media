class RemoveUpcFromMovies < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :upc, :bigint
  end
end
