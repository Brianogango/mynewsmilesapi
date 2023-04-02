class User < ApplicationRecord
    has_secure_password
    has_many :likes
    has_many :bookings, dependent: :destroy
    has_many :events ,through: :bookings

     validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
     validates :password, presence: true
     validates :first_name, presence: true
     validates :last_name, presence: true
     validates :phone, presence: true
    validates :level, presence: true
end
