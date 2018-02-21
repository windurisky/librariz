class Member < ApplicationRecord
  enum gender: {
    male: 0,
    female: 1
  }

  enum status: {
    unconfirmed: 0,
    confirmed: 1,
    banned: 2,
    deleted: -1
  }

  has_many :rents
  
  validates :name, :gender, :birthdate, :address, :email, :password, :status, presence: true
end
