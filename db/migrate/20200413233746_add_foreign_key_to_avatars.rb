class AddForeignKeyToAvatars < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :avatar, index: true
  end
end
