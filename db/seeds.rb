# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "123456797675",
    category:     "chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "361542564",
    category:     "japanese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "123123797675",
    category:     "italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "32466431256",
    category:     "french"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "36554638321",
    category:     "belgian"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

Review.destroy_all
reviews_attributes = [
  {
    content:       "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",
    rating:        3,
    restaurant_id: 1
  },
  {
    content:       "Donec ullamcorper nulla non metus auctor fringilla.",
    rating:        1,
    restaurant_id: 2
  },
  {
    content:       "Maecenas sed diam eget risus varius blandit sit amet non magna.",
    rating:        3,
    restaurant_id: 3
  },
  {
    content:       "Morbi leo risus, porta ac consectetur ac, vestibulum at eros.",
    rating:        5,
    restaurant_id: 4
  },
  {
    content:       "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",
    rating:        2,
    restaurant_id: 5
  },
]
reviews_attributes.each { |params| Review.create!(params) }
