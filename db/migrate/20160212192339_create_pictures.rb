class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.integer :product_id
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :pictures
  end
end
