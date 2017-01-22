# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.delete_all
Photo.delete_all
Artist.delete_all

# Songs
song1 = Song.create( { name: "In So Many Ways" } )
song2 = Song.create( { name: "My Life Inside Your Heart" } )
song3 = Song.create( { name: "Nailed Shut" } )
song4 = Song.create( { name: "The Kids Aren't Alright" } )
song5 = Song.create( { name: "No Control" } )
song6 = Song.create( { name: "Ocean" } )

# Photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dzgzbs3of/image/upload/v1485086314/BadReligion_live_kyt4lp.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dzgzbs3of/image/upload/v1485086324/rise_against_fat_wreck_chords_barvcl.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dzgzbs3of/image/upload/v1485086319/no-use-for-a-name-4ff5a6d941ce3_iluygx.jpg")
photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/dzgzbs3of/image/upload/v1485086326/the-offspring-2_dx3ihb.jpg")
photo5 = Photo.create(remote_image_url: "http://res.cloudinary.com/dzgzbs3of/image/upload/v1485086317/johnbutlertrio_d3dvv6.jpg")

# Artists
artist1 = Artist.create(name: "Bad Religion", songs: [song1, song5])
artist2 = Artist.create(name: "Rise Against", songs: [song2])
artist3 = Artist.create(name: "No Use For A Name", songs: [song3])
artist4 = Artist.create(name: "The Offspring", songs: [song4])
artist5 = Artist.create(name: "John Butler Trio", songs: [song6])
