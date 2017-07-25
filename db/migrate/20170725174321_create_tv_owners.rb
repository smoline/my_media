class CreateTvOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_owners do |t|
      t.references :user, foreign_key: true
      t.references :tv_show, foreign_key: true
      t.string :notes

      t.timestamps
    end
  end
end
