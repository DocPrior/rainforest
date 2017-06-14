# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: 'Sloth Repelant',
  description: "Take the fast lane!",
  price_in_cents: 1800
)

Product.create(
  name: 'Snake Bite Kit',
  description: "Ouch!",
  price_in_cents: 2000
)

Product.create(
  name: 'Rain Coat',
  description: "Stay dry!",
  price_in_cents: 1600
  )

Review.create(
  product_id: Product.last,
  comment: 'Stinks!',
  rating: 1
)

Review.create(
  product_id: Product.first,
  comment: 'Yummy!',
  rating: 5
)

Review.create(
  product_id: Product.last,
  comment: 'meh',
  rating: '3'
)
