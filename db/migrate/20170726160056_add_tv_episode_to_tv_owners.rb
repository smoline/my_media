class AddTvEpisodeToTvOwners < ActiveRecord::Migration[5.0]
  def change
    add_reference :tv_owners, :tv_episode, foreign_key: true
  end
end
