# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 Seeding spices..."
puts "Deleting old data..."
Track.destroy_all
Album.destroy_all
User.destroy_all

puts "Creating users..."
artists = User.all
user1 = User.new(username: "Prez Harris", 
    password: "prezharris", 
    location: "Chicago, IL"
)
user1.avatar.attach(io: File.open(Rails.root.join('app/assets/images/artistimages/prezharris.png')),
                  filename: 'prezharris.png')
user1.save
user2 = User.new(username: "frnkln",
    password: "frnkln",
    location: "Portland, OR"
)
user2.avatar.attach(io: File.open(Rails.root.join('app/assets/images/artistimages/defaultartist.png')),
                  filename: 'defaultartist.png')
user2.save
user3 = User.new(username: "EXPLORE",
    password: "explore",
    location: "Los Angeles, CA"
)
user3.avatar.attach(io: File.open(Rails.root.join('app/assets/images/artistimages/defaultartist.png')),
                  filename: 'defaultartist.png')
user3.save

puts "Creating albums..."
albums = Album.all
album1 = Album.new(title: "State of The Union",
    artist_id: user1.id,
    year: 2015,
    genre: "Hip-Hop",
    description: "Debut mixtape from Prez Harris."
)
album1.albumart.attach(io: File.open(Rails.root.join('app/assets/images/albumart/stateoftheunion.png')),
                  filename: 'stateoftheunion.png')
album1.save
album2 = Album.new(title: "A Different World",
    artist_id: user1.id,
    year: 2017,
    genre: "Hip-Hop",
    description: "2017 EP from Prez Harris."
)
album2.albumart.attach(io: File.open(Rails.root.join('app/assets/images/albumart/adifferentworld.png')),
                  filename: 'adifferentworld.png')
album2.save

puts "Creating tracks..."
tracks = Track.all
track1 = Track.new(title: "Season",
    album_id: album1.id,
    order: 1
    )
    track1.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/01season.mp3')),
    filename: '01season.mp3')
    track1.save

track2 = Track.new(title: "Economics",
    album_id: album1.id,
    order: 2
    )
    track2.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/02economics.mp3')),
    filename: '02economics.mp3')
    track2.save
track3 = Track.new(title: "Stay Together",
    album_id: album1.id,
    order: 3
    )
    track3.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/03staytogether.mp3')),
    filename: '03staytogether.mp3')
    track3.save
track4 = Track.new(title: "Chains",
    album_id: album1.id,
    order: 4
    )
    track4.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/04chains.mp3')),
    filename: '04chains.mp3')
    track4.save
track5 = Track.new(title: "Windy City",
    album_id: album1.id,
    order: 5
    )
    track5.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/05windycity.mp3')),
    filename: '05windycity.mp3')
    track5.save
track6 = Track.new(title: "First Lady",
    album_id: album1.id,
    order: 6
    )
    track6.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/06firstlady.mp3')),
    filename: '06firstlady.mp3')
    track6.save
track7 = Track.new(title: "Just Do Me",
    album_id: album1.id,
    order: 7
    )
    track7.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/07justdome.mp3')),
    filename: '07justdome.mp3')
    track7.save
track8 = Track.new(title: "Power",
    album_id: album1.id,
    order: 8
    )
    track8.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/08power.mp3')),
    filename: '08power.mp3')
    track8.save
track9 = Track.new(title: "Let's Make A Toast",
    album_id: album1.id,
    order: 9
    )
    track9.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/09letsmakeatoast.mp3')),
    filename: '09letsmakeatoast.mp3')
    track9.save
track10 = Track.new(title: "Stand Up",
    album_id: album1.id,
    order: 10
    )
    track10.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/stateoftheunion/10standup.mp3')),
    filename: '10standup.mp3')
    track10.save
track11 = Track.new(title: "The Wall",
    album_id: album2.id,
    order: 1
    )
    track11.audio_file.attach(io: File.open(Rails.root.join('app/assets/tracks/adifferentworld/01thewall.mp3')),
    filename: '01thewall.mp3')
    track11.save

puts "✅ Done seeding!"