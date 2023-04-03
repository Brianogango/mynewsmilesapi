class EventsController < ApplicationController
 skip_before_action :authorized, only: [:index, :show,:create, :destroy,:update, :like_event]

def like_event
  event = Event.find(params[:id])
  if event.update(likes: event.likes + 1)
    render json: { success: true }
  else
    render json: { success: false }
  end
end

  # GET /events
  def index
    @events = Event.all
    render json: @events
  end

  # GET /events/1
  def show
    event = set_event
    if event
    render json: event
    else
      render json: {error: "No such event"}, status: :not_found
    end
  end

  # POST /events
  def create
    event = Event.create(event_params)
    if event.valid?
      render json: event, status: :created, location: event
    else
      render json: event.errors, status: :unprocessable_entity
    end
  end

 def update
  event = set_event
  if event.update(event_params)
    render json: { status: 'success', message: 'Event updated successfully' }
  else
    render json: { status: 'error', message: event.errors.full_messages.join(', ') }
  end
end


  # DELETE /events/1
  def destroy
    event = set_event
    if event.destroy
      head :no_content
    else
      render json: { error: 'Unable to delete event' }, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.permit(:event_name, :event_date, :event_location, 
        :event_description, :poster_url, :event_price, :total_tickets,
         :start_time, :end_time, :contact, :age_restriction, :ticket_info, :lineup, :category)
    end
end
