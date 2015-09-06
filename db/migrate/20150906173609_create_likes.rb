class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :prototype, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
