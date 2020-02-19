puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '12345678',
    category:     'Indian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '87654321',
    category:     'Mexican'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
