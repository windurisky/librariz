class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :gender
      t.datetime :birthdate
      t.string :address
      t.string :email
      t.string :password
      t.integer :status

      t.timestamps
    end
  end
end
