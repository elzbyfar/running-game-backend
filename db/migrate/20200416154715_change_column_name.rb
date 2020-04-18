class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :scores, :distance, :max_distance
  end
end
