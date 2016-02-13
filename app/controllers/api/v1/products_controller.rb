module Api
  module V1
    class ProductsController < ApplicationController
      protect_from_forgery :except => :create
      respond_to :json

      def index
        respond_with Product.all
      end

      def create
        args = params
        images = args[:parameters][:images].map{|img| img["image_path"]}
        args[:parameters].delete(:images)
        options = args[:parameters]
        options[:categories] = options[:categories].join(",")
        options[:tags] = options[:tags].join(",")
        product = Product.new(options.to_hash)
        if product.save
          if images
            images.each { |image|
              product.pictures.create(image: image)
            }
          end
        end
        respond_with product
      end

    end
  end
end