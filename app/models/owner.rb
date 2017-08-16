class Owner < ApplicationRecord
  include ImageUploader::Attachment.new(:image)

  validates :movie, presence: true
  belongs_to :user
  belongs_to :movie
end
