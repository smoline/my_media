class CreateMovieCrews < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_crews do |t|
      t.references :movie, foreign_key: true
      t.references :person, foreign_key: true
      t.string :department
      t.string :job

      t.timestamps
    end
  end
end
