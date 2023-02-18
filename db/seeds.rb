# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Game.delete_all

Game.create({
  "title": "The Legend of Zelda: Breath of the Wild",
  "description": "Embark on an epic adventure in a vast open world. Explore the ruins of a once-great civilization, battle fierce monsters, and uncover the secrets of the kingdom of Hyrule.",
  "price": 59.99,
  "user_id": 1
  # "categories": ["Action games", "Adventure games"],
  # "image": "https://example.com/zelda.png"
})

Game.create({
  "title": "Fortnite",
  "description": "Fight to be the last person standing in this fast-paced battle royale game. Build structures, gather resources, and use a variety of weapons to outlast your opponents.",
  "price": 0,
  "user_id": 1
  # "categories": ["Action games", "Multiplayer games"],
  # "image": "https://example.com/fortnite.png"
})

Game.create({
  "title": "Civilization VI",
  "description": "Lead your civilization from ancient times to the modern era. Build cities, research technologies, and engage in diplomacy to become the dominant civilization on the planet.",
  "price": 59.99,
  "user_id": 1
  # "categories": ["Strategy games", "Simulation games"],
  # "image": "https://example.com/civ6.png"
})

Game.create({
  "title": "FIFA 22",
  "description": "Experience the excitement of professional soccer with updated rosters and improved gameplay. Build your team, compete online, and win the ultimate prize: the FIFA World Cup.",
  "price": 59.99,
  "user_id": 1
  # "categories": ["Sports games"],
  # "image": "https://example.com/fifa22.png"
})

Game.create({
  "title": "Forza Horizon 5",
  "description": "Race through the stunning landscapes of Mexico in the latest installment of the popular racing series. Customize your cars, compete in events, and discover new challenges at every turn.",
  "price": 59.99,
  "user_id": 1
  # "categories": ["Racing games"],
  # "image": "https://example.com/forza5.png"
})

Game.create({
  "title": "Minecraft",
  "description": "Explore a world of endless possibilities in this sandbox game. Gather resources, build structures, and create your own adventures in a procedurally generated world.",
  "price": 26.95,
  "user_id": 1
  # "categories": ["Adventure games", "Simulation games"],
  # "image": "https://example.com/minecraft.png"
})

Game.create({
  "title": "Tetris Effect",
  "description": "Experience the classic puzzle game like never before with stunning visuals and immersive audio. Clear lines, unlock new levels, and lose yourself in the hypnotic gameplay.",
  "price": 39.99,
  "user_id": 1
  # "categories": ["Puzzle games"],
  # "image": "https://example.com/tetris.png"
})

Game.create({
  "title": "The Elder Scrolls V: Skyrim",
  "description": "Enter a world of dragons, magic, and adventure. Explore the vast landscape of Skyrim, battle fierce foes, and become the ultimate dragonborn.",
  "price": 39.99,
  "user_id": 1
  # "categories": ["Action games", "Adventure games", "Role-playing games"],
  # "image": "https://example.com/skyrim.png"
})

Game.create({
  "title": "Rock Band 4",
  "description": "Form a band, pick up your instrument, and rock out to your favorite tunes. Customize your character, play with friends, and live out your rock and roll fantasies.",
  "price": 59.99,
  "user_id": 1
  # "categories": ["Music games", "Multiplayer games"],
  # "image": "https://example.com/rockband4.png"
})

Game.create({
  "title": "Among Us",
  "description": "Uncover the impostor on your spaceship in this popular social deduction game. Work with your crewmates to complete tasks and identify the traitor before it's too late.",
  "price": 4.99,
  "user_id": 1
  # "categories": ["Multiplayer games", "Party games"],
  # "image": "https://example.com/amongus.png"
})
