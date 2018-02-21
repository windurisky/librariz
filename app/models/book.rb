class Book < ApplicationRecord
  has_many :rents

  validates :title, :description, :isbn, :release_year, :publisher, :category, presence: true
  validates :price, presence: true, numericality: true
end
