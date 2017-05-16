class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :tmdb_id
      t.string :description
      t.string :release_date
      t.integer :upc
      t.integer :runtime
      t.string :tagline

      t.timestamps
    end
  end
end
