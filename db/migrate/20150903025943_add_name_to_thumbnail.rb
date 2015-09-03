class AddNameToThumbnail < ActiveRecord::Migration
  def change
    add_column :thumbnails, :name, :text
  end
end
