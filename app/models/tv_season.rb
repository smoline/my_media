class TvSeason < ApplicationRecord
  belongs_to :tv_show

  has_many :tv_casts, dependent: :destroy
  has_many :people, through: :tv_casts

  has_many :tv_episodes, dependent: :destroy
  accepts_nested_attributes_for :tv_episodes, allow_destroy: true
end
