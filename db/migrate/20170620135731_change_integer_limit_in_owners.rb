class ChangeIntegerLimitInOwners < ActiveRecord::Migration[5.0]
  def change
    change_column :owners, :upc, :integer, limit: 8
  end
end
