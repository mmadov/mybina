class Company < ApplicationRecord
		   mount_uploader :slide, AvatarUploader
		   mount_uploader :image, AvatarUploader
		   mount_uploader :logo, AvatarUploader
def self.search(search)
  where("name LIKE ?", "%#{search}%") 
  where("price LIKE ?", "%#{search}%")
end
end