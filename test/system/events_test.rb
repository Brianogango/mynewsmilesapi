require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "Age restriction", with: @event.age_restriction
    fill_in "Category", with: @event.category
    fill_in "Contact", with: @event.contact
    fill_in "End time", with: @event.end_time
    fill_in "Event date", with: @event.event_date
    fill_in "Event description", with: @event.event_description
    fill_in "Event location", with: @event.event_location
    fill_in "Event name", with: @event.event_name
    fill_in "Event price", with: @event.event_price
    fill_in "Likes", with: @event.likes
    fill_in "Lineup", with: @event.lineup
    fill_in "Poster url", with: @event.poster_url
    fill_in "Start time", with: @event.start_time
    fill_in "Ticket info", with: @event.ticket_info
    fill_in "Total tickets", with: @event.total_tickets
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "Age restriction", with: @event.age_restriction
    fill_in "Category", with: @event.category
    fill_in "Contact", with: @event.contact
    fill_in "End time", with: @event.end_time
    fill_in "Event date", with: @event.event_date
    fill_in "Event description", with: @event.event_description
    fill_in "Event location", with: @event.event_location
    fill_in "Event name", with: @event.event_name
    fill_in "Event price", with: @event.event_price
    fill_in "Likes", with: @event.likes
    fill_in "Lineup", with: @event.lineup
    fill_in "Poster url", with: @event.poster_url
    fill_in "Start time", with: @event.start_time
    fill_in "Ticket info", with: @event.ticket_info
    fill_in "Total tickets", with: @event.total_tickets
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
