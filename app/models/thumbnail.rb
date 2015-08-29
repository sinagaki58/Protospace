class Thumbnail < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  belongs_to :prototype
end
