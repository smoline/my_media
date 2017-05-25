class CreateMovieCasts < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_casts do |t|
      t.references :movie, foreign_key: true
      t.references :person, foreign_key: true
      t.string :character
      t.integer :order

      t.timestamps
    end
  end
end
