class Rent < ApplicationRecord
  enum state: {
    borrowed: 0,
    returned: 1,
    lost: 2
  }

  belongs_to :book
  belongs_to :rent

  validates :borrow_date, :state, presence: true
  validates :book, :rent, presence: true

  def return_rent(actual_return_date)
    self.actual_return_date = actual_return_date
    self.fine_amount = rent_day_count * ::Constant::FINE_PER_DAY
    self.save
  end

  private

  def rent_day_count
    0 if self.actual_return_date.to_date < self.expected_return_date.to_date
    self.actual_return_date.to_date - expected_return_date.to_date
  end
end
