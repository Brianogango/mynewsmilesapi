class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :event_date, :event_location, :event_description, :poster_url, :event_price, :total_tickets, :start_time, :end_time, :contact, :age_restriction, :ticket_info, :lineup, :category, :likes
   has_many :bookings
 
end
