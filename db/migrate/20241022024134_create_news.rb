class CreateNews < ActiveRecord::Migration[7.2]
  def change
    create_table :news do |t|
      t.string :title
      t.integer :category_id
      t.string :source
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end
