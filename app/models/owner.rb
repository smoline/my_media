class Owner < ApplicationRecord
  include ImageUploader[:image]

  belongs_to :user
  belongs_to :movie
end
