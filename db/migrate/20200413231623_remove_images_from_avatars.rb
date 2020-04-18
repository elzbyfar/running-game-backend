class RemoveImagesFromAvatars < ActiveRecord::Migration[6.0]
  def change
    remove_column :avatars, :images
    add_column :avatars, :image, :string
  end
end
