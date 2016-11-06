class CreateAkciyas < ActiveRecord::Migration[5.0]
  def change
    create_table :akciyas do |t|
      t.string :title
      t.text :text
      t.string :image
      t.integer :company_id
      t.string :desc

      t.timestamps
    end
  end
end
