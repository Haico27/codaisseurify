# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.delete_all
Artist.delete_all

song1 = Song.create( { name: "In So Many Ways", album: "No Substance", releasedate: 1998 } )
song2 = Song.create( { name: "My Life Inside Your Heart", album: "The Unraveling", releasedate: 2001 } )
song3 = Song.create( { name: "Nailed Shut", album: "Hard Rock Bottom", releasedate: 2002 } )
song4 = Song.create( { name: "The Kids Aren't Alright", album: "Americana", releasedate: 1998 } )
song5 = Song.create( { name: "No Control", album: "No Control", releasedate: 1989 } )

artist1 = Artist.create(name: "Bad Religion")
artist2 = Artist.create(name: "Rise Against")
artist3 = Artist.create(name: "No Use For A Name")
artist4 = Artist.create(name: "The Offspring")

artist1.songs << [song1, song5]
artist1.save

artist2.songs << [song2]
artist2.save

artist3.songs << [song3]
artist3.save

artist4.songs << [song4]
artist4.save
