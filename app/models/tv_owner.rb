class TvOwner < ApplicationRecord
  validates :tv_episode, presence: true
  belongs_to :user
  belongs_to :tv_episode
end
