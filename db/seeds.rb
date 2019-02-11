puts "begin seed"

sizes = ["small", "medium", "large"]

LocationType.create(category: "Park")
LocationType.create(category: "Museum")

5.times do
  User.create(username: Faker::Internet.username, name: Faker::Name.name, password: Faker::Internet.password, age: Faker::Number.between(10, 100))
end

5.times do
  Location.create(name: Faker::University.name, neighborhood: Faker::GameOfThrones.city, size: sizes.sample, location_type_id: Faker::Number.between(1, 2), cost_of_admission: Faker::Number.between(1, 50))
end

10.times do
  Review.create(content: Faker::MichaelScott.quote, rating: Faker::Number.between(1, 5), user_id: Faker::Number.between(1, 5), location_id: Faker::Number.between(1, 5))
end

5.times do
  Event.create(date: Faker::Date.forward(50), title: Faker::Lorem.word, description: Faker::Lorem.sentence, location_id: Faker::Number.between(1, 5))
end

5.times do
  EventUser.create(user: User.all.sample, event: Event.all.sample)
end

puts "end seed"
