class TvOwner < ApplicationRecord
  belongs_to :user
  belongs_to :tv_show
end
