class Company < ApplicationRecord
		   mount_uploader :slide, AvatarUploader
		   mount_uploader :image, AvatarUploader
		   mount_uploader :logo, AvatarUploader
def self.search(name,price,region)
  where("name LIKE ? AND price LIKE? AND region LIKE?", "%#{name}%","%#{price}%","%#{region}%")
end
end