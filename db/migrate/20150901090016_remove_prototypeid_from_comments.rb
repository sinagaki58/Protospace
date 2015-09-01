class RemovePrototypeidFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :prototype_id, :integer
  end
end
