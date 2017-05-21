class CreateVideoGames < ActiveRecord::Migration[5.0]
  def change
    create_table :video_games do |t|
      t.integer :upc
      t.string :game_title
      t.string :description
      t.integer :created_by_id

      t.timestamps
    end
  end
end
