class AddImageDataToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :image_data, :text
  end
end
