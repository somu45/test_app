class PictureSerializer < ActiveModel::Serializer
  attributes :id, :image_path

  def image_path
    object.image.url(:medium)
  end
end
