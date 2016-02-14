class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :sku_id, :price, :description, :expire_date, :categories, :tags, :vars
  has_many :pictures

  def categories
    object.categories.split(",")
  end

  def tags
    object.tags.split(",")
  end


end
