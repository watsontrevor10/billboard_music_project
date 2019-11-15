# 25.times do 
#   Artist.create(
#     artist_name: Faker::Music.band, 
#     avatar: Faker::Avatar.image,
#     home_state: Faker::Address.state,
#     home_city: Faker::Address.city,
#   )
# end

200.times do
  Song.create!(
  song_name: Faker::Music.band,
  genre: Faker::Music.genre,
  play_time: Faker::Number.decimal(l_digits: 2),
  lyrics: Faker::Quotes::Shakespeare.as_you_like_it_quote,
  date_released: Faker::Date.between(from: 2.years.ago, to: Date.today),
  artist_id: rand(1..25),
  )
end
puts "created 200 songs"
