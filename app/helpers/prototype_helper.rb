module PrototypeHelper

  def proto_user
    @prototype.user
  end

  def main_image
    @prototype.thumbnails.main.first.image
  end

  def sub_image
    @prototype.thumbnails.sub
  end
end
