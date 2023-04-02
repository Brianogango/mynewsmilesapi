class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone, :email, :level
  has_many :bookings
  has_many :events, through: :bookings
end