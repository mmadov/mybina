class Pic < ApplicationRecord
	belongs_to :product
	  has_attached_file :name,
    :path => ":rails_root/public/images/:id/:filename",
    :url  => "/images/:id/:filename"
end
