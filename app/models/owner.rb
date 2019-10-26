class Owner < ApplicationRecord
  has_one_attached :image
  validates :movie, presence: true
  belongs_to :user
  belongs_to :movie
end
