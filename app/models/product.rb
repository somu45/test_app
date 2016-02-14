class Product < ActiveRecord::Base

  has_many :pictures, :dependent => :destroy

  serialize :categories
  serialize :tags
  serialize :vars, Hash

  validates :name, :sku_id, :description, :categories, :tags, :vars, presence: true
  validates_numericality_of :price, :collection_id, presence: true, :only_integer => true
  validate :price_check

  def price_check
    errors.add(:price, "should be multipled by 100") if price%100 > 0
  end


end
