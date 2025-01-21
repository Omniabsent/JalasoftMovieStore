# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Movie.create!(
    title: "The Silent Resistance", 
    description: "In 1942 Nazi-occupied France, a young teacher risks her life to protect Jewish children, secretly working with the Resistance. Torn between her duty and her love for a German officer, she fights to maintain hope amidst despair.",
    rating: 4.8,
    image: "/assets/movie2"
)

Movie.create!(
    title: "Echoes of the Sea",
    description: "A retired sailor returns to his small coastal village only to find it changed beyond recognition. As he reconnects with his estranged daughter, he uncovers secrets that threaten to tear the community apart.",
    rating: 4.5,
    image: "/assets/movie3"
  )

  Movie.create!(
    title: "Shadows of the Past",
    description: "A forensic psychologist investigates a string of murders that seem to mirror her own traumatic past. As the killer closes in, she must confront her deepest fears to survive.",
    rating: 4.7,
    image: "/assets/movie4"
  )

  Movie.create!(
    title: "The Forgotten Melody",
    description: "An aging violinist battles Alzheimer's while trying to finish the symphony he started for his late wife. With the help of a young prodigy, he finds solace in their shared passion for music.",
    rating: 5,
    image: "/assets/movie5"
  )

  Movie.create!(
    title: "The Last Astronaut",
    description: "When Earth's last hope for survival lies in a mission to colonize Mars, a lone astronaut faces an impossible choice between saving humanity and keeping a promise to his dying wife.",
    rating: 4.6,
    image: "/assets/movie6"
  )

  Movie.create!(
    title: "Whispers in the Fog",
    description: "In a remote fishing town, a journalist uncovers a conspiracy tied to a string of mysterious disappearances. With the fog rolling in, she races against time to reveal the truth.",
    rating: 4.4,
    image: "/assets/movie7"
  )