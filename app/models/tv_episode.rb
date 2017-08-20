class TvEpisode < ApplicationRecord
  belongs_to :tv_season, inverse_of: :tv_episode

  has_many :tv_guest_stars, dependent: :destroy
  has_many :people, through: :tv_guest_stars

  has_many :tv_owners, dependent: :destroy, inverse_of: :tv_episode
  accepts_nested_attributes_for :tv_owners
  has_many :users, through: :tv_owners

  validates :tv_season, presence: true
end
