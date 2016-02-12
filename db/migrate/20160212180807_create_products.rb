class CreateProducts < ActiveRecord::Migration
  def change
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
end
