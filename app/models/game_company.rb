class GameCompany < ApplicationRecord
  has_many :games, through: :developers
end
