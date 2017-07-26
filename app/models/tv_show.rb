class TvShow < ApplicationRecord
  has_many :tv_favorites, dependent: :destroy
  has_many :users, through: :tv_favorites

  has_many :tv_genres, dependent: :destroy
  has_many :genres, through: :tv_genres

  has_many :tv_creators, dependent: :destroy
  has_many :people, through: :tv_creators

  has_many :tv_seasons, dependent: :destroy
end
