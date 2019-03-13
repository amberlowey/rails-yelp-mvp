# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Parm',
    address:      'Mulberry',
    phone_number: '18003159187',
    category:     'italian'
  },
  {
    name:         'West Bourne',
    address:      'Sullivan',
    phone_number: '8881239898',
    category:     'belgian'
  },
  {
    name:         'Raku',
    address:      'Macdougal',
    phone_number: '7778987',
    category:     'japanese'
  },
  {
    name:         'Han Dynasty',
    address:      '2nd Ave',
    phone_number: '',
    category:     'chinese'
  },
  {
    name:         'Bao Haus',
    address:      'E 14th St',
    phone_number: '9955876',
    category:     'chinese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
