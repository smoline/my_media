class CreateDevelopers < ActiveRecord::Migration[5.0]
  def change
    create_table :developers do |t|
      t.references :game, foreign_key: true
      t.references :game_company, foreign_key: true

      t.timestamps
    end
  end
end
