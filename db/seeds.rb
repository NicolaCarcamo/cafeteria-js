# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1000.times do
    Sale.create(name: Faker::Coffee.blend_name, origin: Faker::Coffee.origin, price: Faker::Number.between(from: 1990, to: 5490), date: Faker::Date.between(from: '2017-01-01', to: Date.today))
end