class AddAttachmentImageToImageCompanies < ActiveRecord::Migration
  def self.up
    change_table :image_companies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :image_companies, :image
  end
end
