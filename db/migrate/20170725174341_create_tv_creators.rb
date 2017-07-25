class CreateTvCreators < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_creators do |t|
      t.references :tv_show, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
