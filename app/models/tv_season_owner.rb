class TvSeasonOwner < ApplicationRecord
  belongs_to :tv_season
  belongs_to :user
end
