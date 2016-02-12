class Product < ActiveRecord::Base

  serialize :categories
  serialize :tags
  serialize :vars

end
