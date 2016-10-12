class AddPriceAreaToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :price_area, :string
  end
end
