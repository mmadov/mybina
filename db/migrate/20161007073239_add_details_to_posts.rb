class AddDetailsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :room, :string
    add_column :posts, :price, :integer
    add_column :posts, :area, :integer
    add_column :posts, :price_room, :integer
    add_column :posts, :about, :text
  end
end
