class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :about
      t.string :slide
      t.string :logo
      t.string :image
      t.string :adress
      t.integer :user_id
      t.string :phone
      t.string :facebook
      t.string :youtube
      t.string :web_site
      t.integer :floor
      t.integer :part

      t.timestamps
    end
  end
end
