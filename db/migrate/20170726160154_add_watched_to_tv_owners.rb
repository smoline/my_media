class AddWatchedToTvOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :tv_owners, :watched, :boolean
  end
end
