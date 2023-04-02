json.extract! event, :id, :event_name, :event_date, :event_location, :event_description, :poster_url, :event_price, :total_tickets, :start_time, :end_time, :contact, :age_restriction, :ticket_info, :lineup, :category, :likes, :created_at, :updated_at
json.url event_url(event, format: :json)
