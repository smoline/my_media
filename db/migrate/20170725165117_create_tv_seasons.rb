class CreateTvSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_seasons do |t|
      t.string :name
      t.integer :tmdb_season_id
      t.references :tv_show, foreign_key: true
      t.string :overview
      t.string :air_date
      t.integer :season_number
      t.string :season_poster_path

      t.timestamps
    end
  end
end
