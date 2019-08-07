Restaurant.destroy_all

p 'Creating Restaurants...'

5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: %w[chinese italian japanese french belgian][rand(0..5)],
    phone_number: Faker::PhoneNumber.phone_number
  )
end

p 'Restaurants created...'
