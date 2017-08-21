class TvOwner < ApplicationRecord
  belongs_to :user, inverse_of: :tv_owner
  belongs_to :tv_episode

  validates :tv_episode, presence: true
end
