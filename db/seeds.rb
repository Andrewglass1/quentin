# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Video.create(:photo => "https://s3.amazonaws.com/lindseyeve/Bike_Movie_Still.jpg", :link => "http://www.youtube.com/embed/96oZnzLjcL8?autoplay=1")
Video.create(:photo => "https://s3.amazonaws.com/lindseyeve/Petz_Movie_Still.jpg", :link => "http://www.youtube.com/embed/IdSPBvznwaQ?autoplay=1")
Video.create(:photo => "https://s3.amazonaws.com/lindseyeve/Windmill_Still.jpg", :link => "http://www.youtube.com/embed/GI1ZfN4HIfw?autoplay=1")
