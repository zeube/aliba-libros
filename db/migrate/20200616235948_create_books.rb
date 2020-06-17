class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :stock
      t.integer :price

      t.timestamps
    end
  end
end
