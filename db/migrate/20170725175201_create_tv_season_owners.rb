class CreateTvSeasonOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_season_owners do |t|
      t.references :tv_season, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
