class TvCast < ApplicationRecord
  belongs_to :tv_season
  belongs_to :person
end
