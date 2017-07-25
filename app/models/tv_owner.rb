class TvOwner < ApplicationRecord
  validates :tv_show, presence: true
  belongs_to :user
  belongs_to :tv_show
end
