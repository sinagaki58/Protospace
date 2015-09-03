class RemoveImageFromThumbnail < ActiveRecord::Migration
  def change
    remove_column :thumbnails, :image, :text
  end
end
