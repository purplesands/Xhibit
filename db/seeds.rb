puts "begin seed"

sizes = ["small", "medium", "large"]

LocationType.create(category: "Park")
LocationType.create(category: "Museum")

5.times do
  User.create(username: Faker::Internet.username, name: Faker::Name.name, password: Faker::Internet.password, age: Faker::Number.between(10, 100))
end
 ##Museums
Location.create(name: "New Museum",
  neighborhood: "Lower East Side",
  location_type_id: 2,
  cost_of_admission: 18,
  image_url: "https://cdn.archpaper.com/wp-content/uploads/2017/02/21323r2-New_Museum_New_York2.jpg",
  description: "The New Museum of Contemporary Art, founded in 1977 by Marcia Tucker, is a museum in New York City at 235 Bowery, on Manhattan's Lower East Side. It is among the few contemporary art museums worldwide exclusively devoted to presenting contemporary art from around the world."
)

Location.create(name: "American Museum of Natural History",
  neighborhood: "Upper West Side",
  location_type_id: 2,
  cost_of_admission: 23,
  image_url: "http://www.vaejovidae.com/AMNH.jpg",
  description: "The American Museum of Natural History, located on the Upper West Side of Manhattan, New York City, is one of the largest museums in the world."
)

Location.create(name: "Metropolitan Museum of Art",
  neighborhood: "Upper East Side",
  location_type_id: 2,
  cost_of_admission: 25,
  image_url: "https://imgs.6sqft.com/wp-content/uploads/2014/11/21020631/the-met-museum.jpg",
  description: "The Metropolitan Museum of Art of New York City, colloquially 'the Met', is the largest art museum in the United States. With 7.06 million visitors to its three locations in 2016, it was the third most visited art museum in the world, and the fifth most visited museum of any kind."
)

Location.create(name: "Solomon R. Guggenheim Museum",
  neighborhood: "Upper East Side",
  location_type_id: 2,
  cost_of_admission: 25,
  image_url: "https://i1.wp.com/www.guggenheim.org/wp-content/uploads/2007/12/gen-press-guggenheim-foundation-image-3.jpg",
  description: "the gugg"
)

Location.create(name: "Whitney Museum of American Art",
  neighborhood: "Meatpacking District",
  location_type_id: 2,
  cost_of_admission: 25,
  image_url: "https://cdn.vox-cdn.com/uploads/chorus_image/image/57571565/whitney_new.0.0.jpg",
  description: "The Whitney Museum of American Art – known informally as the 'Whitney' – is an art museum located in Manhattan. It was founded in 1930 by Gertrude Vanderbilt Whitney, a wealthy and prominent American socialite and art patron after whom the museum is named. The Whitney focuses on 20th- and 21st-century American art."
)

##Parks
Location.create(name: "Central Park",
  neighborhood: "Upper West Side",
  size: "843 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://cdn.vox-cdn.com/thumbor/1i4TW0_PBv9UOO03Ek1HaQW809I=/0x0:2460x1640/1200x900/filters:focal(1034x624:1426x1016)/cdn.vox-cdn.com/uploads/chorus_image/image/55997615/shutterstock_384332770.0.jpg",
  description: "big ol park in manhattan"
)

Location.create(name: "Prospect Park",
  neighborhood: "a lot",
  size: "526 acres",
  location_type_id: 1,
  cost_of_admission: 0,
  image_url: "https://cdn.vox-cdn.com/thumbor/1i4TW0_PBv9UOO03Ek1HaQW809I=/0x0:2460x1640/1200x900/filters:focal(1034x624:1426x1016)/cdn.vox-cdn.com/uploads/chorus_image/image/55997615/shutterstock_384332770.0.jpg",
  description: "big ol park in brooklyn"
)




10.times do
  Review.create(content: Faker::MichaelScott.quote, rating: Faker::Number.between(1, 5), user_id: Faker::Number.between(1, 5), location_id: Faker::Number.between(1, 5))
end

5.times do
<<<<<<< HEAD
<<<<<<< HEAD
  Event.create(start_date: Faker::Date.forward(2), end_date: Faker::Date.forward(50), title: Faker::Lorem.word, description: Faker::Lorem.sentence, location_id: Faker::Number.between(1, 5))
=======
  Event.create(start_date: Faker::Date.forward(1), end_date: Faker::Date.forward(50), title: Faker::Lorem.word, description: Faker::Lorem.sentence, location: Location.all.sample)
>>>>>>> event-time
=======
  Event.create(date: Faker::Date.forward(50), title: Faker::Lorem.word, description: Faker::Lorem.sentence, location_id: Faker::Number.between(1, 5))
>>>>>>> event_find_or_create_by
end

5.times do
  EventUser.create(user: User.all.sample, event: Event.all.sample)
end

puts "end seed"
