class CreateTvGuestStars < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_guest_stars do |t|
      t.references :tv_episode, foreign_key: true
      t.references :person, foreign_key: true
      t.string :character

      t.timestamps
    end
  end
end
