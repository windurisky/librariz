class CreateRents < ActiveRecord::Migration[5.1]
  def change
    create_table :rents do |t|
      t.integer :member_id
      t.integer :book_id
      t.datetime :borrow_date
      t.datetime :expected_return_date
      t.datetime :actual_return_date
      t.integer :state
      t.integer :fine_amount

      t.timestamps
    end
  end
end
