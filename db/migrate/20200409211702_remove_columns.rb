class RemoveColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :avatars, :img1
    remove_column :avatars, :img2
    remove_column :avatars, :img3
    remove_column :avatars, :img4
    remove_column :avatars, :img5
    remove_column :avatars, :img6
    remove_column :avatars, :img7
    remove_column :avatars, :img8
  end
end
