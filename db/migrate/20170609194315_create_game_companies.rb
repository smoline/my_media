class CreateGameCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :game_companies do |t|
      t.integer :igdb_company_id
      t.string :name
      t.string :company_url

      t.timestamps
    end
  end
end
