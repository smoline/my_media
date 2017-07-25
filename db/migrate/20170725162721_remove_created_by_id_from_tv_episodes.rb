class RemoveCreatedByIdFromTvEpisodes < ActiveRecord::Migration[5.0]
  def change
    remove_column :tv_episodes, :created_by_id, :integer
  end
end
