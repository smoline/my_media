class Owner < ApplicationRecord
  validates :movie, presence: true
  belongs_to :user
  belongs_to :movie
end
