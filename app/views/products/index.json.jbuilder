json.array!(@products) do |product|
  json.extract! product, :id, :name, :sku_id, :price, :description, :expire_date, :categories, :tags, :vars, :collection_id
  json.url product_url(product, format: :json)
end
