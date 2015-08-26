class AddUserNmaeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :member, :string
    add_column :users, :profile, :string
    add_column :users, :works, :string

  end
end
