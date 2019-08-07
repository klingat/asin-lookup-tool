class AddProductsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :asin, null: false
      t.text :category
      t.integer :rank
      t.decimal :width
      t.decimal :height
      t.timestamps
    end
  end
end
