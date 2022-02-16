puts 'Removing the restaurants...'
Restaurant.destroy_all

chefs = ['Amane', 'Andrei', 'Arthur', 'Ayanori', 'Brian', 'Colin', 'David', 'Dongwook', 'Kanae', 'Kim', 'Markie', 'Nicole', 'Risako', 'Saori', 'Takeshi', 'Taylor', 'Toby', 'Winston']

puts "Creating #{chefs.count} Restaurants..."
chefs.each do |name|
  Restaurant.create!(
    name: "#{name}'s #{Faker::Restaurant.name}",
    address: Faker::Address.street_address,
    rating: rand(1..5),
    category: Faker::Restaurant.type.split.first,
    chef_name: name
  )
end
puts "...created #{Restaurant.count} restaurants"
