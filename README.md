# README

MODELS:
User
Park
Museum
Reviews
Events

RELATIONSHIPS:
U m2m L  X
E b2 P, M
R b2 U, P || M

SCHEMA:
  User
    username
    password
    Name
    Age

  Location
    Name
    Location
    Size
    LocationType

  LocationType
    Category (park, museum etc)

  Reviews
    content
    rating
    user_id
    location_id

  Event
    date
    title
    description
    location_id
    user?

  EventUser
    user_id
    event_id
