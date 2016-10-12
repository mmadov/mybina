class AddAttachmentSlideToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :slide
    end
  end

  def self.down
    remove_attachment :companies, :slide
  end
end
