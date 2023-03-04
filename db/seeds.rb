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

dales = Trip.new(
  title: "Dales to the Lakes",
  start_point: "Buttertubs Pass",
  end_point: "Ambleside",
  region: "England",
  summary: "The drive takes you to down the winding A684 from Buttertubs Pass down to Lake Windermere and then on to Ambleside."
)
dales.save

# stonehenge = Poi.new(
#   name: "Stonehenge",
#   type: "landmarks",
#   description: "Stonehenge is a prehistoric monument on Salisbury Plain. It is the most architecturally sophisticated prehistoric stone circle in the world.",
#   address: "SP4 7DE"
# )
# stonehenge.save

# cheddar_gorge = Poi.new(
#   name: "Cheddar Gorge",
#   type: "technical/fun roads",
#   description: "Cheddar Gorge is a limestone gorge in the Mendip Hills. It is a great scenic drive but also contains many caves and the oldest complete human skeleton, among other sights.",
#   address: "BS27 3QF"
# )
# cheddar_gorge.save

# dover_castle = Poi.new(
#   name: "Dover Castle",
#   type: "landmarks",
#   description: "Dover Castle is a medieval castle in Dover, Kent, England. It was founded in the 11th century and has been described as the Key to England due to its significance throughout history.",
#   address: "CT16 1HU"
# )
# dover_castle.save

# black_mountain_pass = Poi.new(
#   name: "Black Mountain Pass",
#   type: "technical/fun roads",
#   description: "Black Mountain Pass is known as the most beautiful drive in Wales. The route winds its way through rolling hills, valleys and pastures, across narrow bridges and over mountain streams.",
#   address: "SA20 0AR"
# )
# black_mountain_pass.save

# lindisfarne_castle = Poi.new(
#   name: "Lindisfarne Castle",
#   type: "landmarks",
#   description: "Lindisfarne Castle is a 16th-century castle located on Holy Island, Northumberland, England. The island is accessible from the mainland at low tide by means of a causeway.",
#   address: "TD15 2SH"
# )
# lindisfarne_castle.save

# keswick_loop = Poi.new(
#   name: "Keswick Loop",
#   type: "technical/fun roads",
#   description: "A drive of many natural wonders starting from Keswick visiting some of the most beautiful lakes, valleys and mountain passes in the Lake District.",
#   address: "CA13 9XA"
# )
# keswick_loop.save

# the_white_bear = Poi.new(
#   name: "The White Bear",
#   type: "eats",
#   description: "The White Bear Masham is a luxury inn, restaurant and pub located in the North Yorkshire town of Masham.",
#   address: "HG4 4EN"
# )
# the_white_bear.save

# macdonald_cardrona_hotel = Poi.new(
#   name: "Macdonald Cardrona Hotel",
#   type: "sleeps",
#   description: "Macdonald Cardrona luxury 4 star Hotel in Peebles comes equipped with luxurious rooms, spa facilities & championship golf.",
#   address: "EH45 8NE"
# )
# macdonald_cardrona_hotel.save

# the_angel_inn = Poi.new(
#   name: "The Angel Inn",
#   type: "eats",
#   description: "An easy amble from the shores of England's largest lake Windermere, this classic inn has sweeping views above the jolly bustle of the village below.",
#   address: "LA23 3BU"
# )
# the_angel_inn.save

# buttertubs_pass = Poi.new(
#   name: "Buttertubs Pass",
#   type: "scenic roads",
#   description: "Buttertubs Pass is a mountain pass located in the Yorkshire Dales. The climb was rated by Jeremy Clarkson as England’s only truly spectacular road.",
#   address: "DL11 6DR"
# )
# buttertubs_pass.save

# evo_triangle = Poi.new(
#   name: "Evo Triangle",
#   type: "technical/ fun roads",
#   description: "The route offers a fantastic mix of wonderful winding corners as well as superb open straights. The whole route only takes around half an hour but there's nothing stopping you from having a few goes at it!",
#   address: "LL24 0TA"
# )
# evo_triangle.save

# cobham_service_station = Poi.new(
#   name: "Cobham Service Station",
#   type: "services",
#   description: "The service area consists of one very large amenity building and an equally large petrol station; even the forecourt is believed to be one of the largest in Britain.",
#   address: "KT11 3DB"
# )
# cobham_service_station.save

# charnock_richard = Poi.new(
#   name: "Charnock Richard",
#   type: "services",
#   description: "Charnock Richard services are conveniently located just off the M6 motorway, within easy reach of Blackpool, Manchester and Liverpool.",
#   address: "PR7 5LR"
# )
# charnock_richard.save

# beaconsfield_service_station = Poi.new(
#   name: "Beaconsfield Service Station",
#   type: "services",
#   description: "One of the most attractive Motorway Service Areas in Europe, there is a large lakeside terrace and you can take a stroll through our landscaped grounds and preserved woodlands.",
#   address: "HP9 2SE"
# )
# beaconsfield_service_station.save

# rushton_hall = Poi.new(
#   name: "Rushton Hall",
#   type: "sleeps",
#   description: "A magnificent Grade I Listed Country House hotel in Kettering, Rushton Hall is nestled in 25 acres of immaculate grounds and splendid 16th Century surroundings.",
#   address: "NN14 1RR"
# )
# rushton_hall.save

puts "Finished!"
