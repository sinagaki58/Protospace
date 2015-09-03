module PrototypeHelper

  def proto_user
    @prototype.user
  end

  def main_image
    @prototype.thumbnails.main.first.name
  end

  def sub_images
    @prototype.thumbnails.sub
  end
end
