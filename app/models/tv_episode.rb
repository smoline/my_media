class TvEpisode < ApplicationRecord
  belongs_to :tv_season

  has_many :tv_guest_stars, dependent: :destroy
  has_many :people, through: :tv_guest_stars

  has_many :tv_watched, dependent: :destroy
  has_many :users, through: :tv_watched
end
