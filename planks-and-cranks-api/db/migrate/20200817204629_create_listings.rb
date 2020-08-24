class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :gear_type
      t.string :size
      t.string :condition
      t.float :price
      t.float :msrp
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
