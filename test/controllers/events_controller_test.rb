require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference("Event.count") do
      post events_url, params: { event: { age_restriction: @event.age_restriction, category: @event.category, contact: @event.contact, end_time: @event.end_time, event_date: @event.event_date, event_description: @event.event_description, event_location: @event.event_location, event_name: @event.event_name, event_price: @event.event_price, likes: @event.likes, lineup: @event.lineup, poster_url: @event.poster_url, start_time: @event.start_time, ticket_info: @event.ticket_info, total_tickets: @event.total_tickets } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { age_restriction: @event.age_restriction, category: @event.category, contact: @event.contact, end_time: @event.end_time, event_date: @event.event_date, event_description: @event.event_description, event_location: @event.event_location, event_name: @event.event_name, event_price: @event.event_price, likes: @event.likes, lineup: @event.lineup, poster_url: @event.poster_url, start_time: @event.start_time, ticket_info: @event.ticket_info, total_tickets: @event.total_tickets } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference("Event.count", -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
