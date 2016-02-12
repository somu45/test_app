class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :sku_id
      t.float :price
      t.text :description
      t.date :expire_date
      t.text :categories
      t.text :tags
      t.text :vars
      t.integer :collection_id

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :products
  end
end
