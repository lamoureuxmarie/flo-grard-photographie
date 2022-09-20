puts 'Cleaning up database...'
User.destroy_all
puts 'Database cleaned'

puts 'Creating new users...'
user = User.create(email: "user@gmail.com", password: "123456")

puts 'Creating new album...'
album = Album.create(name: "Nature",
                     description: "Voici quelques photos de ma récente virée à Couleuvre, au Nord de la Martinique")
album.user = user

puts 'Creating new photos...'
photo = Photo.create(title: "Palmier", description: "Attention aux chutes de noix de coco!")
photo.album = album
