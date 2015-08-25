class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :image, :text
    add_column :users, :member, :string
    add_column :users, :profile, :string
    add_column :users, :work, :string


  end
end
