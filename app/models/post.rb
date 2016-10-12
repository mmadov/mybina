class Post < ApplicationRecord
	   has_many :post_attachments
   accepts_nested_attributes_for :post_attachments
   has_many :rooms
   belongs_to :company
   mount_uploader :image, AvatarUploader

end
