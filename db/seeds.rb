# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all

puts "Creating users..."

test = User.new(email: "test@roadtips.com")
test.save

puts "Cleaning database..."
Trip.destroy_all

puts "Creating trips..."

scotland = Trip.new(
  title: "North Coast 500",
  start_point: "Inverness Castle",
  end_point: "Inverness Castle",
  region: "Scotland",
  summary: "The North Coast 500 is a 516-mile scenic route around the north coast of Scotland, starting and ending at
   Inverness Castle. The route is also known as the NC500 and was launched in 2015, linking many features in the north
    Highlands of Scotland in one touring route."
)
scotland.save

northern_ireland = Trip.new(
  title: "Causeway Coastal Route",
  start_point: "Belfast",
  end_point: "Derry",
  region: "Northern Ireland",
  summary: "The drive takes you to several of Northern Ireland’s main tourist attractions and landmarks – the Giant’s
   Causeway itself, Carrick-a-Rede Rope Bridge, Dunluce Castle, Dark Hedges and the Glens of Antrim."
)
northern_ireland.save

puts "Finished!"
