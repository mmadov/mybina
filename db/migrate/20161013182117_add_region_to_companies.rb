class AddRegionToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :region, :integer
  end
end
