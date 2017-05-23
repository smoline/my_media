require "image_processing/mini_magick"

class ImageUploader < Shrine
  # Plugins and uploading logic goes here

  include ImageProcessing::MiniMagick
  plugin :processing
  plugin :versions   # enable Shrine to handle a hash of files
  plugin :delete_raw # delete processed files after uploading

  process(:store) do |io, context|
    original = io.download

    size_800 = resize_and_pad(original, 600, 800, background: 'black', gravity: 'Center') { |cmd| cmd.auto_orient } # orient rotated images
    size_500 = resize_and_pad(size_800,  375, 500, background: 'black', gravity: 'Center')
    size_300 = resize_and_pad(size_500,  225, 300, background: 'black', gravity: 'Center')
    size_thumbnail = resize_and_pad(size_300, 48, 64, background: 'black', gravity: "Center")

    { original: io, large: size_800, medium: size_500, small: size_300, thumbnail: size_thumbnail }
  end
end
