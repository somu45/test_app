class Product < ActiveRecord::Base

  has_many :pictures, :dependent => :destroy

  serialize :categories
  serialize :tags
  serialize :vars, Hash

  validates :name, :sku_id, :description, :categories, :tags, :vars, presence: true
  validates :price, :collection_id, presence: true, numericality: { greater_than_or_equal_to: 0 }


end
