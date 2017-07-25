class TvWatched < ApplicationRecord
  belongs_to :user
  belongs_to :tv_episode
end
