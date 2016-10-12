class CreateCompanyAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :company_attachments do |t|
      t.integer :company_id
      t.string :image

      t.timestamps
    end
  end
end
