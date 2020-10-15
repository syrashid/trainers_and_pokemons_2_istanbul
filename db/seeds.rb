puts "Clearing Pokemon World"

if Rails.env.development?
  Trainer.destroy_all
  Pokemon.destroy_all
  Move.destroy_all
end

puts "Creating Trainers"
ash = Trainer.create!(
  name: "Ash Ketchum",
  banner_url: "https://www.thefactsite.com/wp-content/uploads/2017/09/ash-ketchum-facts-pokemon.jpg"
)

gary = Trainer.create!(
  name: "Gary Oak",
  banner_url: "https://www.tvovermind.com/wp-content/uploads/2018/08/GarySquirtle.jpg"
)

brock = Trainer.create!(
  name: "Brock",
  banner_url: "https://static1.srcdn.com/wordpress/wp-content/uploads/2016/11/Brock-Pokemon-Series.jpg"
)

Pokemon.create!(
  name: "Squirtle",
  image_url: "https://cdn.bulbagarden.net/upload/3/39/007Squirtle.png",
  trainer: ash
)

Pokemon.create!(
  name: "Pikachu",
  image_url: "https://cdn.bulbagarden.net/upload/thumb/0/0d/025Pikachu.png/500px-025Pikachu.png",
  trainer: ash
)

Pokemon.create!(
  name: "Arcanine",
  image_url: "https://cdn.bulbagarden.net/upload/thumb/b/b8/059Arcanine.png/500px-059Arcanine.png",
  trainer: gary
)

Pokemon.create!(
  name: "Onix",
  image_url: "https://cdn.bulbagarden.net/upload/thumb/9/9a/095Onix.png/500px-095Onix.png",
  trainer: brock
)

names = %w(Water\ Gun Thunderbolt Ember Dig Tackle Body\ Slam)

names.each do |name|
  Move.create!(name: name)
end

puts "Finished Seeding"
