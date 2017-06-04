class GameGenre < ApplicationRecord
  belongs_to :game_genre_list
  belongs_to :game
end
