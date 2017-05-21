class AddConsoleTypeToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :console_type, :string
  end
end
