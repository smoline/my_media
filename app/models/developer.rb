class Developer < ApplicationRecord
  belongs_to :game
  belongs_to :game_company
end
