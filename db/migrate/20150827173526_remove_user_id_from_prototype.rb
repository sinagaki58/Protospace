class RemoveUserIdFromPrototype < ActiveRecord::Migration
  def change
    remove_column :prototypes, :user_id, :integer
    remove_column :prototypes, :user_id_id, :integer
  end
end
