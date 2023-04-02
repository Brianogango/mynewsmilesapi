class BookingsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :user_bookings]

def index
    render json: Booking.all
end

def create
  booking = Booking.create(booking_params)
  if booking.valid?
    render json: { booking: booking, status: :created }
  else
    render json: { error: booking.errors.full_messages.to_sentence }, status: :unprocessable_entity
  end
end



 def user_bookings
  user = User.find(params[:id])
  if user
    bookings = user.bookings
    render json: bookings
  else
    render json: { error: 'User not found' }, status: :not_found
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.permit(:user_id, :event_id, :total, :tickets)
    end
end
