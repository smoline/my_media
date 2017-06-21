class AddUpcToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :upc, :integer
  end
end
