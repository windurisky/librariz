class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :isbn
      t.integer :release_year
      t.string :publisher
      t.string :category
      t.integer :price

      t.timestamps
    end
  end
end
