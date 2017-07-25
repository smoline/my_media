class CreateTvWatcheds < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_watcheds do |t|
      t.references :user, foreign_key: true
      t.references :tv_episode, foreign_key: true

      t.timestamps
    end
  end
end
