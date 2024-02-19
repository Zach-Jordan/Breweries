# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# seeds.rb

# Generate fake breweries
10.times do
  brewery = Brewery.create!(
    brewery_id: Faker::Lorem.unique.word,
    name: Faker::Company.unique.name,
    brewery_type: Faker::Beer.unique.style,
    address: Faker::Address.unique.full_address,
    phone: Faker::PhoneNumber.unique.phone_number,
    website: Faker::Internet.unique.url
  )

  # Generate fake beers for each brewery
  5.times do
    brewery.beers.create!(
      beer_id: Faker::Lorem.unique.word,
      name: Faker::Beer.unique.name,
      style: Faker::Beer.style,
      abv: Faker::Beer.alcohol,
    )
  end
end

