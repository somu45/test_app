class Picture < ActiveRecord::Base

  belongs_to :product

  has_attached_file :image, :styles => {:medium => "640x480>", :thumb => "100x100>"},
                    :path => ":rails_root/public/images/:id/:filename",
                    :url  => "/images/:id/:filename"

  validates_attachment_presence :image
  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png']
end
