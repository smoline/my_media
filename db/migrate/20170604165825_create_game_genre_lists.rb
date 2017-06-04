class CreateGameGenreLists < ActiveRecord::Migration[5.0]
  def change
    create_table :game_genre_lists do |t|
      t.integer :igdb_genre_id
      t.string :name

      t.timestamps
    end
  end
end
