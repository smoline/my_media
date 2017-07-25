class AddTvSeasonIdToTvEpisodes < ActiveRecord::Migration[5.0]
  def change
    add_reference :tv_episodes, :tv_season, foreign_key: true
  end
end
