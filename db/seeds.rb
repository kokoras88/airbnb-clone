# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning'
GameCategory.delete_all
Game.all.delete_all
Category.delete_all
puts 'Generating categories...'
categories = [
  { name: "Action" },
  { name: "Adventure" },
  { name: "Role-playing" },
  { name: "Strategy" },
  { name: "Simulation" },
  { name: "Sports" },
  { name: "Racing" },
  { name: "Fighting" },
  { name: "Puzzle" },
  { name: "Platformer" },
  { name: "Multiplayer" },
  { name: "Music" },
  { name: "Party" }
]

categories.each do |category|
  Category.create(category)
end

puts "Generated #{Category.count} categories!"

game = Game.create(
  title: "The Legend of Zelda: Breath of the Wild",
  description: 'Embark on an epic adventure in a vast open world. Explore the ruins of a once-great civilization,
   battle fierce monsters, and uncover the secrets of the kingdom of Hyrule.',
  price: 59.99,
  user_id: 1
  # “categories”: [“Action games”, “Adventure games”],
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Action')
GameCategory.create(game: game, category: category)
category = Category.find_by(name: 'Adventure')
GameCategory.create(game: game, category: category)

game = Game.new(
  title: 'Fortnite',
  description: 'Fight to be the last person standing in this fast-paced battle royale game.
   Build structures, gather resources, and use a variety of weapons to outlast your opponents.',
  price: 0,
  user_id: 1
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Multiplayer')
GameCategory.create(game: game, category: category)
game = Game.new(
  title: 'Civilization VI',
  description: 'Lead your civilization from ancient times to the modern era. Build cities, research technologies,
   and engage in diplomacy to become the dominant civilization on the planet.',
  price: 59.99,
  user_id: 1
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Strategy')
GameCategory.create(game: game, category: category)
category = Category.find_by(name: 'Simulation')
GameCategory.create(game: game, category: category)
game = Game.new(
  title: 'FIFA 22',
  description: 'Experience the excitement of professional soccer with updated rosters and improved gameplay. Build your
   team, compete online, and win the ultimate prize: the FIFA World Cup.',
  price: 59.99,
  user_id: 1
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Sports')
GameCategory.create(game: game, category: category)
game = Game.new(
  title: "Forza Horizon 5",
  description: 'Race through the stunning landscapes of Mexico in the latest installment of the popular racing series.
   Customize your cars, compete in events, and discover new challenges at every turn.',
  price: 59.99,
  user_id: 1
  # “categories”: [“Racing games”],
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Racing')
GameCategory.create(game: game, category: category)
game = Game.new(
  title: 'Minecraft',
  description: 'Explore a world of endless possibilities in this sandbox game. Gather resources, build structures, and
   create your own adventures in a procedurally generated world.',
  price: 26.95,
  user_id: 2
  # “categories”: [“Adventure games”, “Simulation games”],
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Adventure')
GameCategory.create(game: game, category: category)
category = Category.find_by(name: 'Simulation')
GameCategory.create(game: game, category: category)
game = Game.new(
  title: 'Tetris Effect',
  description: 'Experience the classic puzzle game like never before with stunning visuals and immersive audio. Clear
   lines, unlock new levels, and lose yourself in the hypnotic gameplay.',
  price: 39.99,
  user_id: 2
  # “categories”: [“Puzzle games”],
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Puzzle')
GameCategory.create(game: game, category: category)
game = Game.new(
  title: 'The Elder Scrolls V: Skyrim',
  description: 'Enter a world of dragons, magic, and adventure. Explore the vast landscape of Skyrim, battle fierce foes,
   and become the ultimate dragonborn.',
  price: 39.99,
  user_id: 2
  # categories: [“Action games”, “Adventure games”, “Role-playing games”],
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Action')
GameCategory.create(game: game, category: category)
category = Category.find_by(name: 'Adventure')
GameCategory.create(game: game, category: category)
category = Category.find_by(name: 'Role-playing')
GameCategory.create(game: game, category: category)
game = Game.new(
  title: 'Rock Band 4',
  description: 'Form a band, pick up your instrument, and rock out to your favorite tunes. Customize your character,
   play with friends, and live out your rock and roll fantasies.',
  price: 59.99,
  user_id: 2
  # “categories”: [“Music games”, “Multiplayer games”],
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Role-Music')
GameCategory.create(game: game, category: category)
category = Category.find_by(name: 'Multiplayer')
GameCategory.create(game: game, category: category)
game = Game.new(
  title: 'Among Us',
  description: 'Uncover the impostor on your spaceship in this popular social deduction game. Work with your crewmates
   to complete tasks and identify the traitor before it’s too late.',
  price: 4.99,
  user_id: 2
  # “categories”: [“Multiplayer games”, “Party games”],
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Multiplayer')
GameCategory.create(game: game, category: category)
category = Category.find_by(name: 'Party')
GameCategory.create(game: game, category: category)

game = Game.new(
  title: 'The Legend of Zelda: Breath of the Wild',
  description: 'Embark on an epic adventure in a vast open world. Explore the ruins
   of a once-great civilization, battle fierce monsters, and uncover the secrets of the kingdom of Hyrule.',
  price: 59.99,
  user_id: 1
  # “categories”: [“Action games”, “Adventure games”],
)
url = game.title.gsub(' ', '%20')
file = URI.open("https://res.cloudinary.com/dnorlz2hl/image/upload/#{url}.jpg")
game.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
game.save
category = Category.find_by(name: 'Action')
GameCategory.create(game: game, category: category)
category = Category.find_by(name: 'Adventure')
GameCategory.create(game: game, category: category)

puts "Generated #{Game.count} games!"

puts "Attaching photos to games..."
