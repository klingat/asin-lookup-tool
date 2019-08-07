class AddProductsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :asin, null: false
      t.text :category
      t.string :dimensions
      t.integer :rank
      t.timestamps
    end
  end
end
