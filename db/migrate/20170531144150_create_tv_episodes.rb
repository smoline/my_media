class CreateTvEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_episodes do |t|
      t.string :title
      t.integer :tmdb_episode_id
      t.string :description
      t.string :air_date
      t.integer :episode_number
      t.integer :season_number
      t.string :episode_image_url
      t.integer :created_by_id

      t.timestamps
    end
  end
end
