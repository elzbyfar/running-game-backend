class AddImagesToAvatars < ActiveRecord::Migration[6.0]
  def change
    add_column :avatars, :images, :text, array: true, default: []
  end
end
