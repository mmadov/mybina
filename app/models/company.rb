class Company < ApplicationRecord
			      has_many :company_attachments
   accepts_nested_attributes_for :company_attachments,  :reject_if => :all_blank, :allow_destroy => true

		   mount_uploader :slide, AvatarUploader
		   mount_uploader :image, AvatarUploader
		   mount_uploader :logo, AvatarUploader
		   
def self.search(name,price,region_id)
  where("name LIKE ? AND price LIKE? AND region_id LIKE?", "%#{name}%","%#{price}%","#{region_id}")
end
end