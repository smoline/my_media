class ChangeIntegerLimitInMovies < ActiveRecord::Migration[5.0]
  def change
    change_column :movies, :upc, :integer, limit: 8
  end
end
