class AddUserDataToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :user_number, :integer
    add_column :scores, :username, :string
  end
end
