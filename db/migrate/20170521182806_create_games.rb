class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :upc
      t.string :title
      t.string :description
      t.integer :created_by_id

      t.timestamps
    end
  end
end
