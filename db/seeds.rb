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

test = User.new(email: "test@roadtips.com", username: "test")
test.save

jaimie_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678103392/Jaimie-profile_aiwwzf.jpg")
jaimie = User.new(email: "jaimie@roadtips.co.uk", username: "Jaimie", password: "123456")
jaimie.avatar.attach(io: jaimie_avatar, filename: "Jaimie-profile_aiwwzf", content_type: "image/jpg")
jaimie.save

puts "Cleaning database..."
Trip.destroy_all

puts "Creating trips..."

nc500 = Trip.new(
  title: "North Coast 500",
  start_point: "Inverness Castle",
  end_point: "Inverness Castle",
  region: "Scotland",
  summary: "The North Coast 500 is a 516-mile scenic route around the north coast of Scotland, starting and ending at
  Inverness Castle. The route is also known as the NC500 and was launched in 2015, linking many features in the north
    Highlands of Scotland in one touring route."
)
nc500.save

northern_ireland = Trip.new(
  title: "Causeway Coastal Route",
  start_point: "Belfast",
  end_point: "Derry",
  region: "Northern Ireland",
  summary: "The drive takes you to several of Northern Ireland’s main tourist attractions and landmarks – the Giant’s
  Causeway itself, Carrick-a-Rede Rope Bridge, Dunluce Castle, Dark Hedges and the Glens of Antrim."
)
northern_ireland.save

west_scotland1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678138904/storr_jbpten.jpg")
west_scotland2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678138904/rum_jljwi2.jpg")
west_scotland3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678138904/beach-sunset_u4bnnd.jpg")
west_scotland = Trip.new(
  title: "Highlands to the Islands",
  start_point: "Fort William",
  end_point: "Isle of Skye",
  region: "Scotland",
  summary: "Starting at Fort William take the coastal road past Glenfinnan Viaduct (the Harry Potter Bridge,
  and on to the village of Arisaig. Stay on Camusarach beach where the film Local Hero was filmed. Take the ferry to
  Skye and spend 2/3 days exploring the island. Tour the Talisker whisky distillery and hike the Old Man of
  Storr and Quiraing.)"
)
west_scotland.photos.attach(io: west_scotland1, filename: "storr_jbpten", content_type: "image/jpg")
west_scotland.photos.attach(io: west_scotland2, filename: "rum_jljwi2", content_type: "image/jpg")
west_scotland.photos.attach(io: west_scotland3, filename: "beach-sunset_u4bnnd", content_type: "image/jpg")
west_scotland.save

dales1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1678020123/malham_huexmk.jpg")
dales2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678020123/ribblehead_uzc9nj.jpg")
dales3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678020122/donkey_nv00bj.jpg")
dales = Trip.new(
  title: "Dales to the Lakes",
  start_point: "Yorkshire Sculpture Park",
  end_point: "Windermere",
  region: "England",
  summary: "Starting off at Yorkshire Sculpture Park. Drive up to stay for a couple of nights in Malham. Visit Malham
  Cove, Gordale Scarr, and the village of Kettlewell in the Dales. Drive to Ingleton to see the waterfalls, and then on
  to Ribblehead Viaduct. Stop off for lunch in Hawes before driving the scenic Buttertubs Pass. Then drive down the
  winding A684 to Lake Windermere to stay in a converted Shepherds Hut. Hire out a boat on Lake Windermere, and hike
  Loughrigg Fell for a 360 degree view of the lakes and the surrounding mountains. Visit the town of Ambleside and go
  for a swim in Rydal Water (if it's warm enough!)"
)
dales.photos.attach(io: dales1, filename: "malham_huexmk", content_type: "image/jpg")
dales.photos.attach(io: dales2, filename: "ribblehead_uzc9nj", content_type: "image/jpg")
dales.photos.attach(io: dales3, filename: "donkey_nv00bj", content_type: "image/jpg")
dales.save

puts "Cleaning database..."
Poi.destroy_all

puts "Creating pois..."

stonehenge = Poi.new(
  name: "Stonehenge",
  category: "Landmarks",
  description: "Stonehenge is a prehistoric monument on Salisbury Plain. It is the most architecturally sophisticated prehistoric stone circle in the world.",
  address: "SP4 7DE"
)
stonehenge.save

cheddar_gorge = Poi.new(
  name: "Cheddar Gorge",
  category: "Fun roads",
  description: "Cheddar Gorge is a limestone gorge in the Mendip Hills. It is a great scenic drive but also contains many caves and the oldest complete human skeleton, among other sights.",
  address: "BS27 3QF"
)
cheddar_gorge.save

dover_castle = Poi.new(
  name: "Dover Castle",
  category: "Landmarks",
  description: "Dover Castle is a medieval castle in Dover, Kent, England. It was founded in the 11th century and has been described as the Key to England due to its significance throughout history.",
  address: "CT16 1HU"
)
dover_castle.save

black_mountain_pass = Poi.new(
  name: "Black Mountain Pass",
  category: "Fun roads",
  description: "Black Mountain Pass is known as the most beautiful drive in Wales. The route winds its way through rolling hills, valleys and pastures, across narrow bridges and over mountain streams.",
  address: "SA20 0AR"
)
black_mountain_pass.save

lindisfarne_castle = Poi.new(
  name: "Lindisfarne Castle",
  category: "Landmarks",
  description: "Lindisfarne Castle is a 16th-century castle located on Holy Island, Northumberland, England. The island is accessible from the mainland at low tide by means of a causeway.",
  address: "TD15 2SH"
)
lindisfarne_castle.save

keswick_loop = Poi.new(
  name: "Keswick Loop",
  category: "Fun roads",
  description: "A drive of many natural wonders starting from Keswick visiting some of the most beautiful lakes, valleys and mountain passes in the Lake District.",
  address: "CA13 9XA"
)
keswick_loop.save

the_white_bear = Poi.new(
  name: "The White Bear",
  category: "Eats",
  description: "The White Bear Masham is a luxury inn, restaurant and pub located in the North Yorkshire town of Masham.",
  address: "HG4 4EN"
)
the_white_bear.save

macdonald_cardrona_hotel = Poi.new(
  name: "Macdonald Cardrona Hotel",
  category: "Sleeps",
  description: "Macdonald Cardrona luxury 4 star Hotel in Peebles comes equipped with luxurious rooms, spa facilities & championship golf.",
  address: "EH45 8NE"
)
macdonald_cardrona_hotel.save

the_angel_inn = Poi.new(
  name: "The Angel Inn",
  category: "Eats",
  description: "An easy amble from the shores of England's largest lake Windermere, this classic inn has sweeping views above the jolly bustle of the village below.",
  address: "LA23 3BU"
)
the_angel_inn.save

evo_triangle = Poi.new(
  name: "Evo Triangle",
  category: "Fun roads",
  description: "The route offers a fantastic mix of wonderful winding corners as well as superb open straights. The whole route only takes around half an hour but there's nothing stopping you from having a few goes at it!",
  address: "LL24 0TA"
)
evo_triangle.save

cobham_service_station = Poi.new(
  name: "Cobham Service Station",
  category: "Services",
  description: "The service area consists of one very large amenity building and an equally large petrol station; even the forecourt is believed to be one of the largest in Britain.",
  address: "KT11 3DB"
)
cobham_service_station.save

charnock_richard = Poi.new(
  name: "Charnock Richard",
  category: "Services",
  description: "Charnock Richard services are conveniently located just off the M6 motorway, within easy reach of Blackpool, Manchester and Liverpool.",
  address: "PR7 5LR"
)
charnock_richard.save

beaconsfield_service_station = Poi.new(
  name: "Beaconsfield Service Station",
  category: "Services",
  description: "One of the most attractive Motorway Service Areas in Europe, there is a large lakeside terrace and you can take a stroll through our landscaped grounds and preserved woodlands.",
  address: "HP9 2SE"
)
beaconsfield_service_station.save

rushton_hall = Poi.new(
  name: "Rushton Hall",
  category: "Sleeps",
  description: "A magnificent Grade I Listed Country House hotel in Kettering, Rushton Hall is nestled in 25 acres of immaculate grounds and splendid 16th Century surroundings.",
  address: "NN14 1RR"
)
rushton_hall.save

# west_scotland pois start
glenfinnan = Poi.new(
  name: "Glenfinnan Viaduct",
  category: "Landmarks",
  description: "The Glenfinnan Viaduct is a railway viaduct on the West Highland Line in Glenfinnan, Inverness-shire,
  Scotland, built from 1897 to 1901. Located at the top of Loch Shiel in the West Scottish Highlands, the viaduct
  overlooks the Glenfinnan Monument and the waters of Loch Shiel.",
  address: "A830 Rd, Glenfinnan PH37 4LT"
)
glenfinnan.save

a830 = Poi.new(
  name: "A830",
  category: "Scenic roads",
  description: "Coastal road from Fort William to Mallaig.",
  address: "Lochailort station, adjacent, A830, Lochailort PH38 4L"
)
a830.save

camusdarach_beach = Poi.new(
  name: "Camusdarach Beach",
  category: "Sights",
  description: "Camusdarach Beach is an arc of white, glistening sand and clear water just south of the estuary of
  River Morar.",
  address: "Mallaig PH40 4PD"
)
camusdarach_beach.save

talisker_distillery = Poi.new(
  name: "Talisker distillery",
  category: "Landmarks",
  description: "Talisker distillery is an island single malt Scotch whisky distillery based in Carbost, Scotland on the
  Minginish Peninsula on the Isle of Skye. The distillery is operated by Diageo and Taliskers 10 year old whisky has
  been nominated as part of their Classic Malts series.",
  address: "Carbost, Isle of Skye IV47 8SR"
)
talisker_distillery.save

storr = Poi.new(
  name: "Old Man of Storr",
  category: "Sights",
  description: "The Storr is a rocky hill on the Trotternish peninsula of the Isle of Skye in Scotland. The hill
  presents a steep rocky eastern face overlooking the Sound of Raasay, contrasting with gentler grassy slopes to the
  west.",
  address: "Portree IV51 9HX"
)
storr.save

quiraing = Poi.new(
  name: "Quiraing",
  category: "Sights",
  description: "The Quiraing is a landslip on the eastern face of Meall na Suiramach, the northernmost summit of the
  Trotternish on the Isle of Skye, Scotland.",
  address: "Portree IV51 9LA"
)
quiraing.save
# west_scotland pois end

# dales pois start
malham = Poi.new(
  name: "Malham Cove",
  category: "Sights",
  description: "Malham Cove is a large curved limestone formation 0.6 miles north of the village of Malham, North
  Yorkshire, England. It was formed by a waterfall carrying meltwater from glaciers at the end of the last Ice Age more
  than 12,000 years ago.",
  address: "Malham, Skipton BD23 4DJ"
)
malham.save

green_grove = Poi.new(
  name: "Green Grove Country House",
  category: "Sleeps",
  description: "This 160 year-old cottage is set on the edge of the Yorkshire Dales National Park in Bell Busk.
  It offers spacious accommodation with countryside views, 7 miles from Skipton.",
  address: "Green Grove Country House, Malham, BD23 4DU, United Kingdom"
)
green_grove.save

gordale = Poi.new(
  name: "Gordale Scar",
  category: "Sights",
  description: "Gordale Scar is a limestone ravine 1 mile northeast of Malham, North Yorkshire, England. It contains
  two waterfalls and has overhanging limestone cliffs over 330 feet high. The gorge could have been formed by water
  from melting glaciers or a cavern collapse.",
  address: "Malham, Skipton BD23 4DL"
)
gordale.save

kettlewell = Poi.new(
  name: "Kettlewell",
  category: "Landmarks",
  description: "Kettlewell is a village in Upper Wharfedale, North Yorkshire, England. Historically part of the West
  Riding of Yorkshire, it lies 6 miles north of Grassington, at the point where Wharfedale is joined by a minor road
  which leads north-east from the village over Park Rash Pass to Coverdale.",
  address: "BD23"
)
kettlewell.save

ribblehead = Poi.new(
  name: "Ribblehead Viaduct",
  category: "Landmarks",
  description: "The Ribblehead Viaduct or Batty Moss Viaduct carries the Settle–Carlisle railway across Batty Moss
  in the Ribble Valley at Ribblehead, in North Yorkshire, England. The viaduct, built by the Midland Railway, is 28
  miles north-west of Skipton and 26 miles south-east of Kendal. It is a Grade II* listed structure.",
  address: "Low Sleights Rd, Carnforth LA6 3AU"
)
ribblehead.save

ingleton = Poi.new(
  name: "Ingleton Waterfalls Trail",
  category: "Sights",
  description: "Ingleton Waterfalls Trail is a well-known circular trail beginning and ending in the village of
  Ingleton in the English county of North Yorkshire, now maintained by the Ingleton Scenery Company.",
  address: "Broadwood Entrance, Ingleton, Carnforth LA6 3ET"
)
ingleton.save

pantry = Poi.new(
  name: "Wensleydale Pantry",
  category: "Eats",
  description: "Cafe, British",
  address: "1 Market Pl, Hawes DL8 3QX"
)
pantry.save

buttertubs_pass = Poi.new(
  name: "Buttertubs Pass",
  category: "Scenic roads",
  description: "Buttertubs Pass is a mountain pass located in the Yorkshire Dales. The climb was rated by Jeremy Clarkson as England’s only truly spectacular road.",
  address: "DL11 6DR"
)
buttertubs_pass.save

windermere = Poi.new(
  name: "Windermere",
  category: "Sights",
  description: "Windermere is a large lake in Cumbria’s Lake District National Park, northwest England. It’s surrounded
  by mountain peaks and villages, including Bowness-on-Windermere, where The World of Beatrix Potter Attraction has
  modern displays on the children’s writer. In the north, trails lead to Orrest Head, a hill with views across the lake
  and the fells beyond, and Holehird Gardens, with their alpines, heathers and shrubs.",
  address: "Windermere"
)
windermere.save

loughrigg = Poi.new(
  name: "Loughrigg Fell",
  category: "Sights",
  description: "Loughrigg Fell is a hill in the central part of the English Lake District. It stands on the end of the
  long ridge coming down from High Raise over Silver How towards Ambleside, and is separated from its neighbours by the
  depression of Red Bank.",
  address: "Loughrigg Fell"
)
loughrigg.save

rydal = Poi.new(
  name: "Rydal Water",
  category: "Sights",
  description: "Rydal Water is a small body of water in the central part of the English Lake District, in the county of
  Cumbria. It is located near the hamlet of Rydal, between Grasmere and Ambleside in the Rothay Valley. The lake is
  1,290 yards long and varies in width up to a maximum of 380 yards, covering an area of 0.12 mi².",
  address: "Rydal"
)
rydal.save

pie = Poi.new(
  name: "Great North Pie Company",
  category: "Eats",
  description: "Pie restaurant",
  address: "Unit 2, Great north pie, Rothay Rd, Ambleside LA22 0EE"
)
pie.save
# dales pois end

puts "Cleaning database..."
TripPoi.destroy_all

puts "creating trip_pois"

# west_scotland TripPois start
TripPoi.create!(trip: west_scotland, poi: glenfinnan)
TripPoi.create!(trip: west_scotland, poi: a830)
TripPoi.create!(trip: west_scotland, poi: camusdarach_beach)
TripPoi.create!(trip: west_scotland, poi: talisker_distillery)
TripPoi.create!(trip: west_scotland, poi: storr)
TripPoi.create!(trip: west_scotland, poi: quiraing)
# west_scotland TripPois end

# dales TripPois start
TripPoi.create!(trip: dales, poi: malham)
TripPoi.create!(trip: dales, poi: green_grove)
TripPoi.create!(trip: dales, poi: gordale)
TripPoi.create!(trip: dales, poi: kettlewell)
TripPoi.create!(trip: dales, poi: ribblehead)
TripPoi.create!(trip: dales, poi: ingleton)
TripPoi.create!(trip: dales, poi: pantry)
TripPoi.create!(trip: dales, poi: buttertubs_pass)
TripPoi.create!(trip: dales, poi: windermere)
TripPoi.create!(trip: dales, poi: loughrigg)
TripPoi.create!(trip: dales, poi: rydal)
TripPoi.create!(trip: dales, poi: pie)
# dales TripPois end

puts "Finished!"
