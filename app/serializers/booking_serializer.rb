class BookingSerializer < ActiveModel::Serializer
  attributes :id, :total, :tickets
  has_one :user
  has_one :event
end
