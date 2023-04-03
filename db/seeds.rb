Event.create!(
  event_name: "Spring Fling",
  event_date: Date.new(2023, 4, 15),
  event_location: "Central Park, New York City",
  event_description: "Celebrate the arrival of spring with music, food, and fun activities for all ages.",
  poster_url: "https://t3.ftcdn.net/jpg/02/08/48/72/240_F_208487214_yYZIU5xeXEBf58bOCahhpbx5RLzUglWU.jpg",
  event_price: 20.00,
  total_tickets: 1000,
  start_time: Time.new(2023, 4, 15, 12, 0, 0),
  end_time: Time.new(2023, 4, 15, 20, 0, 0),
  contact: "info@springfling.com",
  age_restriction: nil,
  ticket_info: "Tickets can be purchased online or at the gate.",
  lineup: "Local bands and musicians.",
  category: "Music"
)

# Event 2
Event.create!(
  event_name: "Wine and Cheese Festival",
  event_date: Date.new(2023, 5, 20),
  event_location: "Napa Valley, California",
  event_description: "Sample the best wines and cheeses from the region and enjoy live music and entertainment.",
  poster_url: "https://t3.ftcdn.net/jpg/01/15/65/06/240_F_115650696_xAGUyXTMDpHaYPiCURhYepflwVVaX5oK.jpg",
  event_price: 50.00,
  total_tickets: 500,
  start_time: Time.new(2023, 5, 20, 14, 0, 0),
  end_time: Time.new(2023, 5, 20, 20, 0, 0),
  contact: "info@wineandcheesefestival.com",
  age_restriction: 21,
  ticket_info: "Tickets must be purchased in advance.",
  lineup: "Local jazz bands and solo musicians.",
  category: "Music"
)

# Event 3
Event.create!(
  event_name: "Summer Concert Series",
  event_date: Date.new(2023, 6, 15),
  event_location: "Hollywood Bowl, Los Angeles",
  event_description: "Enjoy a summer of music under the stars at the iconic Hollywood Bowl.",
  poster_url: "https://t3.ftcdn.net/jpg/00/88/02/10/240_F_88021032_dsYK2aloqCP1yMsmFlKyjr3L48DVxoxQ.webp",
  event_price: 30.00,
  total_tickets: 2000,
  start_time: Time.new(2023, 6, 15, 18, 30, 0),
  end_time: Time.new(2023, 6, 15, 23, 0, 0),
  contact: "info@hollywoodbowl.com",
  age_restriction: nil,
  ticket_info: "Tickets are available online or at the box office.",
  lineup: "Top international artists and local bands.",
  category: "Community"
)

# # Event 4
Event.create!(
  event_name: "Music in the Park",
  event_date: "2023-07-01",
  event_location: "City Park, Denver",
  event_description: "Enjoy live music from local bands, food trucks, and beer garden.",
  poster_url: "https://as1.ftcdn.net/v2/jpg/00/96/86/90/1000_F_96869035_OMaEa070b4bjJBEtcbO9hHO31Fkdufy9.jpg",
  event_price: 10.00,
  total_tickets: 500,
   start_time: Time.new(2023, 6, 15, 18, 30, 0),
  end_time: Time.new(2023, 6, 15, 23, 0, 0),
  contact: "info@hollywoodbowl.com",
  age_restriction: nil,
  ticket_info: "Tickets are available online or at the box office.",
  lineup: "Top international artists and local bands.",
  category: "Community"
)