class CreateTvFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_favorites do |t|
      t.references :user, foreign_key: true
      t.references :tv_show, foreign_key: true

      t.timestamps
    end
  end
end
