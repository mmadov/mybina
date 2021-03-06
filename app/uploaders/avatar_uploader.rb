# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base
 include Cloudinary::CarrierWave
  
  version :standard do
    process :resize_to_fill => [100, 150, :north]
  end
  
  version :thumbnail do
    process :resize_to_fit => [50, 50]
  end
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  

end
