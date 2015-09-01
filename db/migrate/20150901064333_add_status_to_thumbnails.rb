class AddStatusToThumbnails < ActiveRecord::Migration
  def change
    add_column :thumbnails, :status, :integer
  end
end
