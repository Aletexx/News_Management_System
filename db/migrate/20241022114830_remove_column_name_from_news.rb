class RemoveColumnNameFromNews < ActiveRecord::Migration[7.2]
  def change
    remove_column :news, :date, :date
  end
end
