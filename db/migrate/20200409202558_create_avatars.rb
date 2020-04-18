class CreateAvatars < ActiveRecord::Migration[6.0]
  def change
    create_table :avatars do |t|
      t.string :name
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :img4
      t.string :img5
      t.string :img6
      t.string :img7
      t.string :img8

      t.timestamps
    end
  end
end
