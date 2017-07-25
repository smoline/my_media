class CreateTvShows < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.integer :tmdb_show_id
      t.string :overview
      t.string :first_air_date
      t.string :last_air_date
      t.integer :number_of_seasons
      t.integer :number_of_episodes
      t.string :show_poster_path

      t.timestamps
    end
  end
end
