class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
     t.string :name
      t.text :about
      t.text :adress
      t.string :logo
      t.string :slide
      t.string :map
      t.integer :user_id
      t.timestamps
    end
  end
end
