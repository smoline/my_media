class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.integer :tmdb_genre_id
      t.string :name

      t.timestamps
    end
  end
end
