class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :tmdb_people_id
      t.string :biography
      t.string :birthday
      t.string :deathday
      t.string :place_of_birth
      t.string :profile_path_url
      t.integer :gender

      t.timestamps
    end
  end
end
