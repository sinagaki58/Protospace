class Thumbnail < ActiveRecord::Base

  belongs_to :prototype

  mount_uploader :image, ThumbnailUploader

  enum status: [:main, :sub]
end
