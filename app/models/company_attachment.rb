class CompanyAttachment < ApplicationRecord
	 mount_uploader :image, AvatarUploader
   belongs_to :company

end
