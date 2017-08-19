class TvSeason < ApplicationRecord
  belongs_to :tv_show

  has_many :tv_casts, dependent: :destroy
  has_many :people, through: :tv_casts

  has_many :tv_episodes, dependent: :destroy, inverse_of: :tv_season
  accepts_nested_attributes_for :tv_episodes
end
