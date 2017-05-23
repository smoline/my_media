class AddReleaseDateToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :release_date, :string
  end
end
