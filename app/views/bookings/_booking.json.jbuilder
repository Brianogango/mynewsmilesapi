json.extract! booking, :id, :user_id, :event_id, :total, :tickets, :created_at, :updated_at
json.url booking_url(booking, format: :json)
