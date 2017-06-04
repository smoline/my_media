class GameGenreList < ApplicationRecord
  has_many :games, through: :game_genres
end
