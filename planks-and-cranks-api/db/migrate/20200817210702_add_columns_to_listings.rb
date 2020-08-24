class AddColumnsToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :brand, :string
    add_column :listings, :model, :string
    add_column :listings, :year, :integer
  end
end
