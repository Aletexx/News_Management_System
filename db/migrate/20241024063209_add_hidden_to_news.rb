class AddHiddenToNews < ActiveRecord::Migration[7.2]
  def change
    add_column :news, :hidden, :boolean
  end
end
