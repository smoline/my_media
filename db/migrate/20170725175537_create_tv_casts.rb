class CreateTvCasts < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_casts do |t|
      t.references :tv_season, foreign_key: true
      t.references :person, foreign_key: true
      t.string :character

      t.timestamps
    end
  end
end
