class Thumbnail < ActiveRecord::Base

  belongs_to :prototype

  mount_uploader :name, ThumbnailUploader

  enum status: [:main, :sub]
end
