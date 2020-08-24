class AddSpecsToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :specs, :hstore, default: {}, null: false
  end
end
