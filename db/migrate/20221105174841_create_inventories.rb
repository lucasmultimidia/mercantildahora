class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.references :product, foreign_key: true
      t.integer :invetory_type
      t.integer :quantity

      t.timestamps
    end
  end
end
