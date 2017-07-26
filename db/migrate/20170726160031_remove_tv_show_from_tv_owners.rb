class RemoveTvShowFromTvOwners < ActiveRecord::Migration[5.0]
  def change
    remove_reference :tv_owners, :tv_show, foreign_key: true
  end
end
