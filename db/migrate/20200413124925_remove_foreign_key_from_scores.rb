class RemoveForeignKeyFromScores < ActiveRecord::Migration[6.0]
  def change
    remove_reference :scores, :user, index: true, foreign_key: true
  end
end
