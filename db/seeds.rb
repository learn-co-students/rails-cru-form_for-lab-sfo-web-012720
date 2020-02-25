# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.all.destroy_all
Genre.all.destroy_all
Song.all.destroy_all

john = Artist.create!(name: "lil' John", bio: "get crunked")
crunk = Genre.create!(name: "crunk")
yeah = Song.create!(name: 'Yeah', artist_id: john.id, genre_id: crunk.id)
