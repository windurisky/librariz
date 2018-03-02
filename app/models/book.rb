class Book < ApplicationRecord
  has_many :rents

  validates :title, :description, :isbn, :publisher, :category, presence: true
  validates :price, :release_year, presence: true, numericality: true
end
