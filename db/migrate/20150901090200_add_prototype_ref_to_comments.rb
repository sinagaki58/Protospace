class AddPrototypeRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :prototype, index: true
  end
end
