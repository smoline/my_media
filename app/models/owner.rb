class Owner < ApplicationRecord
  include ImageUploader[:image]

  validates :movie, presence: true
  belongs_to :user
  belongs_to :movie
end
