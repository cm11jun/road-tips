# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Review.destroy_all
Booking.destroy_all
TripPoi.destroy_all
Trip.destroy_all
Poi.destroy_all
Profile.destroy_all
User.destroy_all

test = User.new(email: "test@roadtips.com", username: "test")
test.save

jaimie_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678103392/Jaimie-profile_aiwwzf.jpg")
jaimie_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226545/robin_btlnp0.jpg")
jaimie = User.new(email: "jaimie@roadtips.co.uk", username: "Jaimie", password: "123456", car: "Reliant Robin")
jaimie.avatar.attach(io: jaimie_avatar, filename: "Jaimie-profile_aiwwzf", content_type: "image/jpg")
jaimie.car_photo.attach(io: jaimie_car_photo, filename: "robin_btlnp0", content_type: "image/jpg")
jaimie.save

jaimie_profile = Profile.create!(
  name: 'Jaimie',
  bio: 'I am a web developer.',
  user_id: jaimie.id
)
jaimie_profile.save

chris_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678221930/chris_g6kbzi.jpg")
chris_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226546/mini_gtw5ck.webp")
chris = User.new(email: "chris@roadtips.co.uk", username: "Chris", password: "123456", car: "Mini")
chris.avatar.attach(io: chris_avatar, filename: "chris_g6kbzi", content_type: "image/jpg")
chris.car_photo.attach(io: chris_car_photo, filename: "mini_gtw5ck", content_type: "image/webp")
chris.save

chris_profile = Profile.create!(
  name: 'Chris',
  bio: 'I am a web developer.',
  user_id: chris.id
)
chris_profile.save

isk_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678221931/isk_mbjok8.jpg")
isk_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226546/cozy-coupe_ubh4qq.jpg")
isk = User.new(email: "isk@roadtips.co.uk", username: "Isk", password: "123456", car: "Honda S2000")
isk.avatar.attach(io: isk_avatar, filename: "isk_mbjok8", content_type: "image/jpg")
isk.car_photo.attach(io: isk_car_photo, filename: "cozy-coupe_ubh4qq", content_type: "image/jpg")
isk.save

isk_profile = Profile.create!(
  name: 'Isk',
  bio: 'I am a web developer.',
  user_id: isk.id
)
isk_profile.save

raj_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678221931/raj_ybqxdn.jpg")
raj_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
raj = User.new(email: "raj@roadtips.co.uk", username: "Raj", password: "123456", car: "Toyota Prius")
raj.avatar.attach(io: raj_avatar, filename: "raj_ybqxdn", content_type: "image/jpg")
raj.car_photo.attach(io: raj_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
raj.save

raj_profile = Profile.create!(
  name: 'Raj',
  bio: 'I am a web developer.',
  user_id: raj.id
)
raj_profile.save

wes_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679068289/wes_lbx9r4.jpg")
wes_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
wes = User.new(email: "wes@roadtips.co.uk", username: "Wes", password: "123456", car: "Toyota Prius")
wes.avatar.attach(io: wes_avatar, filename: "wes_lbx9r4", content_type: "image/jpg")
wes.car_photo.attach(io: wes_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
wes.save

wes_profile = Profile.create!(
  name: 'Wes',
  bio: 'I am a web developer.',
  user_id: wes.id
)
wes_profile.save

ilaria_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679070534/Ilaria_qcje20.jpg")
ilaria_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
ilaria = User.new(email: "ilaria@roadtips.co.uk", username: "Ilaria", password: "123456", car: "Toyota Prius")
ilaria.avatar.attach(io: ilaria_avatar, filename: "Ilaria_qcje20", content_type: "image/jpg")
ilaria.car_photo.attach(io: ilaria_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
ilaria.save

ilaria_profile = Profile.create!(
  name: 'Ilaria',
  bio: 'I am a web developer.',
  user_id: ilaria.id
)
ilaria_profile.save

alex_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679073340/alex_pitebt.jpg")
alex_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
alex = User.new(email: "alex@roadtips.co.uk", username: "Alex", password: "123456", car: "Toyota Prius")
alex.avatar.attach(io: alex_avatar, filename: "alex_pitebt", content_type: "image/jpg")
alex.car_photo.attach(io: alex_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
alex.save

alex_profile = Profile.create!(
  name: 'Alex',
  bio: 'I am a web developer.',
  user_id: alex.id
)
alex_profile.save

antonio_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679073340/antonio_sepqd6.jpg")
antonio_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
antonio = User.new(email: "antonio@roadtips.co.uk", username: "Antonio", password: "123456", car: "Toyota Prius")
antonio.avatar.attach(io: antonio_avatar, filename: "antonio_sepqd6", content_type: "image/jpg")
antonio.car_photo.attach(io: antonio_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
antonio.save

antonio_profile = Profile.create!(
  name: 'Antonio',
  bio: 'I am a web developer.',
  user_id: antonio.id
)
antonio_profile.save

jon_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679073340/jon_l59rbx.jpg")
jon_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
jon = User.new(email: "jon@roadtips.co.uk", username: "Jon", password: "123456", car: "Toyota Prius")
jon.avatar.attach(io: jon_avatar, filename: "jon_l59rbx", content_type: "image/jpg")
jon.car_photo.attach(io: jon_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
jon.save

jon_profile = Profile.create!(
  name: 'Jon',
  bio: 'I am a web developer.',
  user_id: jon.id
)
jon_profile.save

zuzanna_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679073340/zuzanna_ouq4mv.jpg")
zuzanna_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
zuzanna = User.new(email: "zuzanna@roadtips.co.uk", username: "Zuzanna", password: "123456", car: "Toyota Prius")
zuzanna.avatar.attach(io: zuzanna_avatar, filename: "zuzanna_ouq4mv", content_type: "image/jpg")
zuzanna.car_photo.attach(io: zuzanna_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
zuzanna.save

zuzanna_profile = Profile.create!(
  name: 'Zuzanna',
  bio: 'I am a web developer.',
  user_id: zuzanna.id
)
zuzanna_profile.save

gador_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679073340/gador_ptzv9y.jpg")
gador_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
gador = User.new(email: "gador@roadtips.co.uk", username: "Gador", password: "123456", car: "Toyota Prius")
gador.avatar.attach(io: gador_avatar, filename: "gador_ptzv9y", content_type: "image/jpg")
gador.car_photo.attach(io: gador_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
gador.save

gador_profile = Profile.create!(
  name: 'Gador',
  bio: 'I am a web developer.',
  user_id: gador.id
)
gador_profile.save

fran_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679073340/francesca_hgmq3x.jpg")
fran_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
fran = User.new(email: "fran@roadtips.co.uk", username: "Francesca", password: "123456", car: "Toyota Prius")
fran.avatar.attach(io: fran_avatar, filename: "francesca_hgmq3x", content_type: "image/jpg")
fran.car_photo.attach(io: fran_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
fran.save

fran_profile = Profile.create!(
  name: 'Francesca',
  bio: 'I am a web developer.',
  user_id: fran.id
)
fran_profile.save

asula_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/asula_pv1zgm.jpg")
asula_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
asula = User.new(email: "asula@roadtips.co.uk", username: "Asula", password: "123456", car: "Toyota Prius")
asula.avatar.attach(io: asula_avatar, filename: "asula_pv1zgm", content_type: "image/jpg")
asula.car_photo.attach(io: asula_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
asula.save

asula_profile = Profile.create!(
  name: 'asula',
  bio: 'I am a web developer.',
  user_id: asula.id
)
asula_profile.save

faryal_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/faryal_tqlkmo.jpg")
faryal_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
faryal = User.new(email: "faryal@roadtips.co.uk", username: "Faryal", password: "123456", car: "Toyota Prius")
faryal.avatar.attach(io: faryal_avatar, filename: "faryal_tqlkmo", content_type: "image/jpg")
faryal.car_photo.attach(io: faryal_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
faryal.save

faryal_profile = Profile.create!(
  name: 'Faryal',
  bio: 'I am a web developer.',
  user_id: faryal.id
)
faryal_profile.save

iain_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/iain_f1slgg.png")
iain_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
iain = User.new(email: "iain@roadtips.co.uk", username: "Iain", password: "123456", car: "Toyota Prius")
iain.avatar.attach(io: iain_avatar, filename: "iain_f1slgg", content_type: "image/png")
iain.car_photo.attach(io: iain_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
iain.save

iain_profile = Profile.create!(
  name: 'Iain',
  bio: 'I am a web developer.',
  user_id: iain.id
)
iain_profile.save

liv_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/liv_bnf5fw.jpg")
liv_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
liv = User.new(email: "liv@roadtips.co.uk", username: "Liv", password: "123456", car: "Toyota Prius")
liv.avatar.attach(io: liv_avatar, filename: "liv_bnf5fw", content_type: "image/jpg")
liv.car_photo.attach(io: liv_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
liv.save

liv_profile = Profile.create!(
  name: 'Liv',
  bio: 'I am a web developer.',
  user_id: liv.id
)
liv_profile.save

jan_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/jan_zvbl1h.jpg")
jan_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
jan = User.new(email: "jan@roadtips.co.uk", username: "Jan", password: "123456", car: "Toyota Prius")
jan.avatar.attach(io: jan_avatar, filename: "jan_zvbl1h", content_type: "image/jpg")
jan.car_photo.attach(io: jan_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
jan.save

jan_profile = Profile.create!(
  name: 'Jan',
  bio: 'I am a web developer.',
  user_id: jan.id
)
jan_profile.save

kenneth_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/kenneth_uqamue.jpg")
kenneth_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
kenneth = User.new(email: "kenneth@roadtips.co.uk", username: "Kenneth", password: "123456", car: "Toyota Prius")
kenneth.avatar.attach(io: kenneth_avatar, filename: "kenneth_uqamue", content_type: "image/jpg")
kenneth.car_photo.attach(io: kenneth_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
kenneth.save

kenneth_profile = Profile.create!(
  name: 'Kenneth',
  bio: 'I am a web developer.',
  user_id: kenneth.id
)
kenneth_profile.save

joe_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259771/joe_evcqiu.png")
joe_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
joe = User.new(email: "joe@roadtips.co.uk", username: "Joe", password: "123456", car: "Toyota Prius")
joe.avatar.attach(io: joe_avatar, filename: "joe_evcqiu", content_type: "image/png")
joe.car_photo.attach(io: joe_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
joe.save

joe_profile = Profile.create!(
  name: 'Joe',
  bio: 'I am a web developer.',
  user_id: joe.id
)
joe_profile.save

giulio_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259771/giulio_qkxqsx.png")
giulio_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
giulio = User.new(email: "giulio@roadtips.co.uk", username: "Giulio", password: "123456", car: "Toyota Prius")
giulio.avatar.attach(io: giulio_avatar, filename: "giulio_qkxqsx", content_type: "image/png")
giulio.car_photo.attach(io: giulio_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
giulio.save

giulio_profile = Profile.create!(
  name: 'Giulio',
  bio: 'I am a web developer.',
  user_id: giulio.id
)
giulio_profile.save

lewis_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259771/lewis_leevvk.jpg")
lewis_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
lewis = User.new(email: "lewis@roadtips.co.uk", username: "Lewis", password: "123456", car: "Toyota Prius")
lewis.avatar.attach(io: lewis_avatar, filename: "lewis_leevvk", content_type: "image/jpg")
lewis.car_photo.attach(io: lewis_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
lewis.save

lewis_profile = Profile.create!(
  name: 'Lewis',
  bio: 'I am a web developer.',
  user_id: lewis.id
)
lewis_profile.save

ayse_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259771/aysegul_qdtxex.jpg")
ayse_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
ayse = User.new(email: "ayse@roadtips.co.uk", username: "Ayse", password: "123456", car: "Toyota Prius")
ayse.avatar.attach(io: ayse_avatar, filename: "aysegul_qdtxex", content_type: "image/jpg")
ayse.car_photo.attach(io: ayse_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
ayse.save

ayse_profile = Profile.create!(
  name: 'Ayse',
  bio: 'I am a web developer.',
  user_id: ayse.id
)
ayse_profile.save

ellen_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259771/ellen_thdthy.jpg")
ellen_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
ellen = User.new(email: "ellen@roadtips.co.uk", username: "Ellen", password: "123456", car: "Toyota Prius")
ellen.avatar.attach(io: ellen_avatar, filename: "ellen_thdthy", content_type: "image/jpg")
ellen.car_photo.attach(io: ellen_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
ellen.save

ellen_profile = Profile.create!(
  name: 'Ellen',
  bio: 'I am a web developer.',
  user_id: ellen.id
)
ellen_profile.save

ina_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/ina_wgbqyu.jpg")
ina_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
ina = User.new(email: "ina@roadtips.co.uk", username: "Ina", password: "123456", car: "Toyota Prius")
ina.avatar.attach(io: ina_avatar, filename: "ina_wgbqyu", content_type: "image/jpg")
ina.car_photo.attach(io: ina_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
ina.save

ina_profile = Profile.create!(
  name: 'Ina',
  bio: 'I am a web developer.',
  user_id: ina.id
)
ina_profile.save

simon_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/simon_esuwm0.jpg")
simon_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
simon = User.new(email: "simon@roadtips.co.uk", username: "Simon", password: "123456", car: "Toyota Prius")
simon.avatar.attach(io: simon_avatar, filename: "simon_esuwm0", content_type: "image/jpg")
simon.car_photo.attach(io: simon_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
simon.save

simon_profile = Profile.create!(
  name: 'Simon',
  bio: 'I am a web developer.',
  user_id: simon.id
)
simon_profile.save

lola_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/lola_l1ockd.jpg")
lola_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
lola = User.new(email: "lola@roadtips.co.uk", username: "Lola", password: "123456", car: "Toyota Prius")
lola.avatar.attach(io: lola_avatar, filename: "lola_l1ockd", content_type: "image/jpg")
lola.car_photo.attach(io: lola_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
lola.save

lola_profile = Profile.create!(
  name: 'Lola',
  bio: 'I am a web developer.',
  user_id: lola.id
)
lola_profile.save

aiub_avatar = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679259772/aiub_aqoeit.jpg")
aiub_car_photo = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678226485/prius_yr53wx.webp")
aiub = User.new(email: "aiub@roadtips.co.uk", username: "Aiub", password: "123456", car: "Toyota Prius")
aiub.avatar.attach(io: aiub_avatar, filename: "aiub_aqoeit", content_type: "image/jpg")
aiub.car_photo.attach(io: aiub_car_photo, filename: "prius_yr53wx", content_type: "image/webp")
aiub.save

aiub_profile = Profile.create!(
  name: 'Aiub',
  bio: 'I am a web developer.',
  user_id: aiub.id
)
aiub_profile.save

puts "Cleaning database..."

nc5001 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679507985/nc5002_s9bmua.webp")
nc5002 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679507985/nc5003_j1ycvx.webp")
nc5003 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679507985/nc5001_ahkkfq.jpg")
nc500 = Trip.new(
  user_id: zuzanna.id,
  title: "North Coast 500",
  start_point: "Ullapool, Highland, Scotland, United Kingdom",
  end_point: "John o' Groats, Highland, Scotland, United Kingdom",
  region: "Scotland",
  summary: "The North Coast 500 is a 516-mile scenic route around the north coast of Scotland, starting and ending at
  Inverness Castle. The route is also known as the NC500 and was launched in 2015, linking many features in the north
    Highlands of Scotland in one touring route.",
  day: 7
)
nc500.photos.attach(io: nc5001, filename: "dark-nc5002_s9bmua", content_type: "image/webp")
nc500.photos.attach(io: nc5002, filename: "dark-nc5003_j1ycvx", content_type: "image/webp")
nc500.photos.attach(io: nc5003, filename: "dark-nc5001_ahkkfq", content_type: "image/jpg")
nc500.save

northern_ireland1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678302977/dark-hedges_g3wgt2.jpg")
northern_ireland2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678302977/Giants-Causeway_pzmrd7.jpg")
northern_ireland3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678302977/rope-bridge_k3rfo6.jpg")
northern_ireland = Trip.new(
  user_id: raj.id,
  title: "Causeway Coastal Route",
  start_point: "Belfast",
  end_point: "Derry",
  region: "Northern Ireland",
  summary: "The drive takes you to several of Northern Ireland’s main tourist attractions and landmarks – the Giant’s
  Causeway itself, Carrick-a-Rede Rope Bridge, Bushmills Distillery, Dunluce Castle, Dark Hedges and the Glens of Antrim.",
  day: 2
)
northern_ireland.photos.attach(io: northern_ireland1, filename: "dark-hedges_g3wgt2", content_type: "image/jpg")
northern_ireland.photos.attach(io: northern_ireland2, filename: "Giants-Causeway_pzmrd7", content_type: "image/jpg")
northern_ireland.photos.attach(io: northern_ireland3, filename: "rope-bridge_k3rfo6", content_type: "image/jpg")
northern_ireland.save

west_scotland1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678138904/storr_jbpten.jpg")
west_scotland2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678138904/rum_jljwi2.jpg")
west_scotland3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678138904/beach-sunset_u4bnnd.jpg")
west_scotland = Trip.new(
  user_id: jaimie.id,
  title: "Highlands to the Islands",
  start_point: "Fort William",
  end_point: "Isle of Skye",
  region: "Scotland",
  summary: "Starting at Fort William, take the coastal road past Glenfinnan Viaduct (the Harry Potter Bridge,
  and on to the village of Arisaig. Stay on Camusarach beach where the film Local Hero was filmed. Take the ferry to
  Skye and spend 2/3 days exploring the island. Tour the Talisker whisky distillery and hike the Old Man of
  Storr and Quiraing.)",
  day: 6
)
west_scotland.photos.attach(io: west_scotland1, filename: "storr_jbpten", content_type: "image/jpg")
west_scotland.photos.attach(io: west_scotland2, filename: "rum_jljwi2", content_type: "image/jpg")
west_scotland.photos.attach(io: west_scotland3, filename: "beach-sunset_u4bnnd", content_type: "image/jpg")
west_scotland.save

dales1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1678020123/malham_huexmk.jpg")
dales2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678020123/ribblehead_uzc9nj.jpg")
dales3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678020122/donkey_nv00bj.jpg")
dales = Trip.new(
  user_id: jaimie.id,
  title: "Dales to the Lakes",
  start_point: "Yorkshire Sculpture Park",
  end_point: "Windermere",
  region: "England",
  summary: "Starting off at Yorkshire Sculpture Park. Drive up to stay for a couple of nights in Malham. Visit Malham
  Cove, Gordale Scarr, and the village of Kettlewell in the Dales. Drive to Ingleton to see the waterfalls, and then on
  to Ribblehead Viaduct. Stop off for lunch in Hawes before driving the scenic Buttertubs Pass. Then drive down the
  winding A684 to Lake Windermere to stay in a converted Shepherds Hut. Hire out a boat on Lake Windermere, and hike
  Loughrigg Fell for a 360 degree view of the lakes and the surrounding mountains. Visit the town of Ambleside and go
  for a swim in Rydal Water (if it's warm enough!)",
  day: 4
)
dales.photos.attach(io: dales1, filename: "malham_huexmk", content_type: "image/jpg")
dales.photos.attach(io: dales2, filename: "ribblehead_uzc9nj", content_type: "image/jpg")
dales.photos.attach(io: dales3, filename: "donkey_nv00bj", content_type: "image/jpg")
dales.save

leamington1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679069763/Wagamama2_gionez.jpg")
leamington2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679068925/wagamama_zvkt2f.png")
leamington3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679069763/Wagamama3_fyhgez.jpg")
leamington = Trip.new(
  user_id: wes.id,
  title: "Trip to the Wagamama at Leamington Spa",
  start_point: "London",
  end_point: "Wagamama Leamington Spa",
  region: "England",
  summary: "Make a beeline to the Wagamama at Leamington Spa straight after class. Gotta love me some tasty Wagamama!",
  day: 1
)
leamington.photos.attach(io: leamington1, filename: "Wagamama2_gionez", content_type: "image/jpg")
leamington.photos.attach(io: leamington2, filename: "wagamama_zvkt2f", content_type: "image/jpg")
leamington.photos.attach(io: leamington3, filename: "Wagamama3_fyhgez", content_type: "image/jpg")
leamington.save

wine1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679071084/wine1_lcieyu.webp")
wine2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679071156/wine2_gdnsgq.jpg")
wine3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679071157/wine3_ydoh2x.jpg")
wine = Trip.new(
  user_id: ilaria.id,
  title: "Bring me the wine!",
  start_point: "London",
  end_point: "Hedonism Wines",
  region: "England",
  summary: "I need wine, just get me to the wine place! I don't care about this stupid road trip!",
  day: 1
)
wine.photos.attach(io: wine1, filename: "wine1_lcieyu", content_type: "image/webp")
wine.photos.attach(io: wine2, filename: "wine2_gdnsgq", content_type: "image/jpg")
wine.photos.attach(io: wine3, filename: "wine3_ydoh2x", content_type: "image/jpg")
wine.save

date1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679074390/ritz1_s36m4p.jpg")
date2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679074390/ritz2_i8tb7t.png")
date3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679074390/ritz3_fvohot.jpg")
date = Trip.new(
  user_id: antonio.id,
  title: "Road trip to the best date ever",
  start_point: "London",
  end_point: "The Ritz London",
  region: "England",
  summary: "This will without any doubt be the best date ever.",
  day: 1
)
date.photos.attach(io: date1, filename: "ritz1_s36m4p", content_type: "image/jpg")
date.photos.attach(io: date2, filename: "ritz2_i8tb7t", content_type: "image/png")
date.photos.attach(io: date3, filename: "ritz3_fvohot", content_type: "image/jpg")
date.save

glasto1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679077940/pyramid_vggmp5.jpg")
glasto2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679077940/amaya_dcu6ub.jpg")
glasto3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679077941/pyramid2_enrild.jpg")
glasto = Trip.new(
  user_id: jon.id,
  title: "Trip to headline Glastonbury",
  start_point: "London",
  end_point: "Glastonbury, Somerset, England, United Kingdom",
  region: "England",
  summary: "My trip to headline the Pyramid stage at Glastonbury 2023! Stopping off at Stonehenge on the way.",
  day: 1
)
glasto.photos.attach(io: glasto1, filename: "pyramid_vggmp5", content_type: "image/jpg")
glasto.photos.attach(io: glasto2, filename: "amaya_dcu6ub", content_type: "image/jpg")
glasto.photos.attach(io: glasto3, filename: "pyramid2_enrild", content_type: "image/jpg")
glasto.save

up_north1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679330595/north1_g2pkpo.jpg")
up_north2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679330595/north2_zc8gr0.jpg")
up_north3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679330595/north3_y94ikh.webp")
up_north = Trip.new(
  user_id: fran.id,
  title: "Trip to up North innit mate",
  start_point: "London",
  end_point: "Hadrian's Wall",
  region: "North England",
  summary: "Road trip to up North an' that from Daan Saaf.",
  day: 2
)
up_north.photos.attach(io: up_north1, filename: "north1_g2pkpo", content_type: "image/jpg")
up_north.photos.attach(io: up_north2, filename: "north2_zc8gr0", content_type: "image/jpg")
up_north.photos.attach(io: up_north3, filename: "north3_y94ikh", content_type: "image/webp")
up_north.save

brewhouse1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679351249/brewhouse1_fglrql.jpg")
brewhouse2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679351249/brewhouse2_xeoz1u.jpg")
brewhouse3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679351249/brewhouse3_av4j1p.jpg")
brewhouse = Trip.new(
  user_id: alex.id,
  title: "Come on guys let's all go to Brewhouse",
  start_point: "138 Kingsland Road, Hackney, London, E2 8DY, United Kingdom",
  end_point: "400 Geffrye Street, Hackney, London, E2 8JA, United Kingdom",
  region: "England",
  summary: "Trip to the one and only Brewhouse!",
  day: 1
)
brewhouse.photos.attach(io: brewhouse1, filename: "brewhouse1_fglrql", content_type: "image/jpg")
brewhouse.photos.attach(io: brewhouse2, filename: "brewhouse2_xeoz1u", content_type: "image/jpg")
brewhouse.photos.attach(io: brewhouse3, filename: "brewhouse3_av4j1p", content_type: "image/jpg")
brewhouse.save

puts "Creating pois..."

stonehenge1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438007/stonehenge_ug9vcc.jpg")
stonehenge = Poi.new(
  name: "Stonehenge",
  category: "Landmarks",
  description: "Stonehenge is a prehistoric monument on Salisbury Plain. It is the most architecturally sophisticated prehistoric stone circle in the world.",
  address: "SP4 7DE"
)
stonehenge.photo.attach(io: stonehenge1, filename: "stonehenge_ug9vcc", content_type: "image/jpg")
stonehenge.save

glasto1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679077940/pyramid_vggmp5.jpg")
pyramid = Poi.new(
  name: "Glastonbury, Somerset, England, United Kingdom",
  category: "Landmarks",
  description: "The Pyramid Stage, is the most instantly recognised festival stage in the world. Rising from the site of a blind spring close to the Glastonbury Abbey/Stonehenge ley line, it is now in its third incarnation.",
  address: "Glastonbury, Somerset, England, United Kingdom"
)
pyramid.photo.attach(io: glasto1, filename: "pyramid_vggmp5", content_type: "image/jpg")
pyramid.save

up_north2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679330595/north2_zc8gr0.jpg")
hadrians = Poi.new(
  name: "Hadrian's Wall",
  category: "Sights",
  description: "Hadrian's Wall, also known as the Roman Wall, Picts' Wall, or Vallum Hadriani in Latin, is a former defensive fortification of the Roman province of Britannia, begun in AD 122 in the reign of the Emperor Hadrian.",
  address: "Hadrian's Wall, Segedunum to Bowness-on-Solway, Hexham, England NE47 7AN, United Kingdom"
)
hadrians.photo.attach(io: up_north2, filename: "north2_zc8gr0", content_type: "image/jpg")
hadrians.save

brew1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438005/brewhouse_apiuv3.jpg")
brew = Poi.new(
  name: "Brewhouse",
  category: "Eats",
  description: "The greatest pub in the world!",
  address: "400 Geffrye Street, Hackney, London, E2 8JA, United Kingdom"
)
brew.photo.attach(io: brew1, filename: "brewhouse_apiuv3", content_type: "image/jpg")
brew.save

cheddar_gorge1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/cheddar_nokdcx.jpg")
cheddar_gorge = Poi.new(
  name: "Cheddar Gorge",
  category: "Fun roads",
  description: "Cheddar Gorge is a limestone gorge in the Mendip Hills. It is a great scenic drive but also contains many caves and the oldest complete human skeleton, among other sights.",
  address: "BS27 3QF"
)
cheddar_gorge.photo.attach(io: cheddar_gorge1, filename: "cheddar_nokdcx", content_type: "image/jpg")
cheddar_gorge.save

dover_castle1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/dover-castle_j7bcqb.jpg")
dover_castle = Poi.new(
  name: "Dover Castle",
  category: "Landmarks",
  description: "Dover Castle is a medieval castle in Dover, Kent, England. It was founded in the 11th century and has been described as the Key to England due to its significance throughout history.",
  address: "CT16 1HU"
)
dover_castle.photo.attach(io: dover_castle1, filename: "dover-castle_j7bcqb", content_type: "image/jpg")
dover_castle.save

black_mountain_pass1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438005/Black-Mountain-Pass_hsseau.jpg")
black_mountain_pass = Poi.new(
  name: "Black Mountain Pass",
  category: "Fun roads",
  description: "Black Mountain Pass is known as the most beautiful drive in Wales. The route winds its way through rolling hills, valleys and pastures, across narrow bridges and over mountain streams.",
  address: "SA20 0AR"
)
black_mountain_pass.photo.attach(io: black_mountain_pass1, filename: "Black-Mountain-Pass_hsseau", content_type: "image/jpg")
black_mountain_pass.save

lindisfarne_castle1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438007/lindisfarne-castle_csp7s5.png")
lindisfarne_castle = Poi.new(
  name: "Lindisfarne Castle",
  category: "Landmarks",
  description: "Lindisfarne Castle is a 16th-century castle located on Holy Island, Northumberland, England. The island is accessible from the mainland at low tide by means of a causeway.",
  address: "TD15 2SH"
)
lindisfarne_castle.photo.attach(io: lindisfarne_castle1, filename: "lindisfarne-castle_csp7s5", content_type: "image/jpg")
lindisfarne_castle.save

keswick_loop1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438007/keswick-loop_gw0pqp.jpg")
keswick_loop = Poi.new(
  name: "Keswick Loop",
  category: "Fun roads",
  description: "A drive of many natural wonders starting from Keswick visiting some of the most beautiful lakes, valleys and mountain passes in the Lake District.",
  address: "CA13 9XA"
)
keswick_loop.photo.attach(io: keswick_loop1, filename: "keswick-loop_gw0pqp", content_type: "image/jpg")
keswick_loop.save

the_white_bear1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438008/the-white-bear_icpztv.jpg")
the_white_bear = Poi.new(
  name: "The White Bear",
  category: "Eats",
  description: "The White Bear Masham is a luxury inn, restaurant and pub located in the North Yorkshire town of Masham.",
  address: "HG4 4EN"
)
the_white_bear.photo.attach(io: the_white_bear1, filename: "the-white-bear_icpztv", content_type: "image/jpg")
the_white_bear.save

macdonald_cardrona_hotel1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438008/macdonald_e6tlec.jpg")
macdonald_cardrona_hotel = Poi.new(
  name: "Macdonald Cardrona Hotel",
  category: "Sleeps",
  description: "Macdonald Cardrona luxury 4 star Hotel in Peebles comes equipped with luxurious rooms, spa facilities & championship golf.",
  address: "EH45 8NE"
)
macdonald_cardrona_hotel.photo.attach(io: macdonald_cardrona_hotel1, filename: "macdonald_e6tlec", content_type: "image/jpg")
macdonald_cardrona_hotel.save

the_angel_inn1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438008/the_angel_inn_kdqvsb.jpg")
the_angel_inn = Poi.new(
  name: "The Angel Inn",
  category: "Eats",
  description: "An easy amble from the shores of England's largest lake Windermere, this classic inn has sweeping views above the jolly bustle of the village below.",
  address: "LA23 3BU"
)
the_angel_inn.photo.attach(io: the_angel_inn1, filename: "the_angel_inn_kdqvsb", content_type: "image/jpg")
the_angel_inn.save

evo_triangle1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/evo_triangle_trvool.jpg")
evo_triangle = Poi.new(
  name: "Evo Triangle",
  category: "Fun roads",
  description: "The route offers a fantastic mix of wonderful winding corners as well as superb open straights. The whole route only takes around half an hour but there's nothing stopping you from having a few goes at it!",
  address: "LL24 0TA"
)
evo_triangle.photo.attach(io: evo_triangle1, filename: "evo_triangle_trvool", content_type: "image/jpg")
evo_triangle.save

beaconsfield_service_station1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/beaconsfield_mpplkg.jpg")
beaconsfield_service_station = Poi.new(
  name: "Beaconsfield Service Station",
  category: "Services",
  description: "One of the most attractive Motorway Service Areas in Europe, there is a large lakeside terrace and you can take a stroll through our landscaped grounds and preserved woodlands.",
  address: "HP9 2SE"
)
beaconsfield_service_station.photo.attach(io: beaconsfield_service_station1, filename: "beaconsfield_mpplkg", content_type: "image/jpg")
beaconsfield_service_station.save

beaconsfield_service_station1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/beaconsfield_mpplkg.jpg")
cobham_service_station = Poi.new(
  name: "Cobham Service Station",
  category: "Services",
  description: "The service area consists of one very large amenity building and an equally large petrol station; even the forecourt is believed to be one of the largest in Britain.",
  address: "KT11 3DB"
)
cobham_service_station.photo.attach(io: beaconsfield_service_station1, filename: "beaconsfield_mpplkg", content_type: "image/jpg")
cobham_service_station.save

beaconsfield_service_station1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/beaconsfield_mpplkg.jpg")
charnock_richard = Poi.new(
  name: "Charnock Richard",
  category: "Services",
  description: "Charnock Richard services are conveniently located just off the M6 motorway, within easy reach of Blackpool, Manchester and Liverpool.",
  address: "PR7 5LR"
)
charnock_richard.photo.attach(io: beaconsfield_service_station1, filename: "beaconsfield_mpplkg", content_type: "image/jpg")
charnock_richard.save

rushton_hall1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438010/rushton_abf8nn.png")
rushton_hall = Poi.new(
  name: "Rushton Hall",
  category: "Sleeps",
  description: "A magnificent Grade I Listed Country House hotel in Kettering, Rushton Hall is nestled in 25 acres of immaculate grounds and splendid 16th Century surroundings.",
  address: "NN14 1RR"
)
rushton_hall.photo.attach(io: rushton_hall1, filename: "rushton_abf8nn", content_type: "image/png")
rushton_hall.save

# northern_ireland pois start
northern_ireland2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678302977/Giants-Causeway_pzmrd7.jpg")
giants_causeway = Poi.new(
  name: "Giant's Causeway",
  category: "Sights",
  description: "The Giant's Causeway (Irish: Clochán an Aifir) is an area of about 40,000 interlocking basalt columns,
  the result of an ancient volcanic fissure eruption.",
  address: "Bushmills BT57 8SU"
)
giants_causeway.photo.attach(io: northern_ireland2, filename: "Giants-Causeway_pzmrd7", content_type: "image/jpg")
giants_causeway.save

northern_ireland3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678302977/rope-bridge_k3rfo6.jpg")
rope_bridge = Poi.new(
  name: "Carrick-a-Rede Rope Bridge",
  category: "Sights",
  description: "The Carrick-a-Rede Rope Bridge is a rope bridge near Ballintoy in County Antrim, Northern Ireland. The
  bridge links the mainland to the tiny island of Carrickarede. It spans 20 metres and is 30 metres above the rocks
  below.",
  address: "119a Whitepark Rd, Ballintoy, Antrim, Ballycastle BT54 6LS"
)
rope_bridge.photo.attach(io: northern_ireland3, filename: "rope-bridge_k3rfo6", content_type: "image/jpg")
rope_bridge.save

bushmills1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/bushmills_ydh1ie.jpg")
bushmills = Poi.new(
  name: "Old Bushmills Distillery",
  category: "Landmarks",
  description: "The Old Bushmills Distillery is an alcohol distillery in Bushmills, County Antrim, Northern Ireland,
  owned by Proximo Spirits. Bushmills Distillery uses water drawn from Saint Columb's Rill, which is a tributary of the
  River Bush. The distillery is a popular tourist attraction, with around 120,000 visitors per year.",
  address: "2 Distillery Rd, Bushmills BT57 8XH"
)
bushmills.photo.attach(io: bushmills1, filename: "bushmills_ydh1ie", content_type: "image/jpg")
bushmills.save

northern_ireland1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678302977/dark-hedges_g3wgt2.jpg")
dark_hedges = Poi.new(
  name: "The Dark Hedges",
  category: "Sights",
  description: "The Dark Hedges is an avenue of beech trees along Bregagh Road between Armoy and Stranocum in County
  Antrim, Northern Ireland.",
  address: "Bregagh Rd, Stranocum, Ballymoney BT53 8PX"
)
dark_hedges.photo.attach(io: northern_ireland1, filename: "dark-hedges_g3wgt2", content_type: "image/jpg")
dark_hedges.save
# northern_ireland pois end

# west_scotland pois start
glenfinnan1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679440218/glenfinnan_pvxcrq.jpg")
glenfinnan = Poi.new(
  name: "Glenfinnan Viaduct",
  category: "Landmarks",
  description: "The Glenfinnan Viaduct is a railway viaduct on the West Highland Line in Glenfinnan, Inverness-shire,
  Scotland, built from 1897 to 1901. Located at the top of Loch Shiel in the West Scottish Highlands, the viaduct
  overlooks the Glenfinnan Monument and the waters of Loch Shiel.",
  address: "A830 Rd, Glenfinnan PH37 4LT"
)
glenfinnan.photo.attach(io: glenfinnan1, filename: "glenfinnan_pvxcrq", content_type: "image/jpg")
glenfinnan.save

a8301 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438005/a830_ov2zu6.jpg")
a830 = Poi.new(
  name: "A830",
  category: "Scenic roads",
  description: "Coastal road from Fort William to Mallaig.",
  address: "Lochailort station, adjacent, A830, Lochailort PH38 4L"
)
a830.photo.attach(io: a8301, filename: "a830_ov2zu6", content_type: "image/jpg")
a830.save

west_scotland3 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678138904/beach-sunset_u4bnnd.jpg")
camusdarach_beach = Poi.new(
  name: "Camusdarach Beach",
  category: "Sights",
  description: "Camusdarach Beach is an arc of white, glistening sand and clear water just south of the estuary of
  River Morar.",
  address: "Mallaig PH40 4PD"
)
camusdarach_beach.photo.attach(io: west_scotland3, filename: "beach-sunset_u4bnnd", content_type: "image/jpg")
camusdarach_beach.save

talisker_distillery1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438008/talisker-distillery_ypckw4.jpg")
talisker_distillery = Poi.new(
  name: "Talisker distillery",
  category: "Landmarks",
  description: "Talisker distillery is an island single malt Scotch whisky distillery based in Carbost, Scotland on the
  Minginish Peninsula on the Isle of Skye. The distillery is operated by Diageo and Taliskers 10 year old whisky has
  been nominated as part of their Classic Malts series.",
  address: "Carbost, Isle of Skye IV47 8SR"
)
talisker_distillery.photo.attach(io: talisker_distillery1, filename: "talisker-distillery_ypckw4", content_type: "image/jpg")
talisker_distillery.save

west_scotland1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678138904/storr_jbpten.jpg")
storr = Poi.new(
  name: "Old Man of Storr",
  category: "Sights",
  description: "The Storr is a rocky hill on the Trotternish peninsula of the Isle of Skye in Scotland. The hill
  presents a steep rocky eastern face overlooking the Sound of Raasay, contrasting with gentler grassy slopes to the
  west.",
  address: "Portree IV51 9HX"
)
storr.photo.attach(io: west_scotland1, filename: "storr_jbpten", content_type: "image/jpg")
storr.save

quiraing1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438008/quirang_qfxf9w.jpg")
quiraing = Poi.new(
  name: "Quiraing",
  category: "Sights",
  description: "The Quiraing is a landslip on the eastern face of Meall na Suiramach, the northernmost summit of the
  Trotternish on the Isle of Skye, Scotland.",
  address: "Portree IV51 9LA"
)
quiraing.photo.attach(io: quiraing1, filename: "quirang_qfxf9w", content_type: "image/jpg")
quiraing.save
# west_scotland pois end

# dales pois start
dales1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1678020123/malham_huexmk.jpg")
malham = Poi.new(
  name: "Malham Cove",
  category: "Sights",
  description: "Malham Cove is a large curved limestone formation 0.6 miles north of the village of Malham, North
  Yorkshire, England. It was formed by a waterfall carrying meltwater from glaciers at the end of the last Ice Age more
  than 12,000 years ago.",
  address: "Malham, Skipton BD23 4DJ"
)
malham.photo.attach(io: dales1, filename: "malham_huexmk", content_type: "image/jpg")
malham.save

green_grove1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/green-grove_kxmfuz.jpg")
green_grove = Poi.new(
  name: "Green Grove Country House",
  category: "Sleeps",
  description: "This 160 year-old cottage is set on the edge of the Yorkshire Dales National Park in Bell Busk.
  It offers spacious accommodation with countryside views, 7 miles from Skipton.",
  address: "Green Grove Country House, Malham, BD23 4DU, United Kingdom"
)
green_grove.photo.attach(io: green_grove1, filename: "green-grove_kxmfuz", content_type: "image/jpg")
green_grove.save

gordale1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/gordale_bo89ov.jpg")
gordale = Poi.new(
  name: "Gordale Scar",
  category: "Sights",
  description: "Gordale Scar is a limestone ravine 1 mile northeast of Malham, North Yorkshire, England. It contains
  two waterfalls and has overhanging limestone cliffs over 330 feet high. The gorge could have been formed by water
  from melting glaciers or a cavern collapse.",
  address: "Malham, Skipton BD23 4DL"
)
gordale.photo.attach(io: gordale1, filename: "gordale_bo89ov", content_type: "image/jpg")
gordale.save

kettlewell1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438007/kettlewell_w998jo.jpg")
kettlewell = Poi.new(
  name: "Kettlewell",
  category: "Landmarks",
  description: "Kettlewell is a village in Upper Wharfedale, North Yorkshire, England. Historically part of the West
  Riding of Yorkshire, it lies 6 miles north of Grassington, at the point where Wharfedale is joined by a minor road
  which leads north-east from the village over Park Rash Pass to Coverdale.",
  address: "Kettlewell Village Hall, Middle Lane, Kettlewell, Skipton, BD23 5QX"
)
kettlewell.photo.attach(io: kettlewell1, filename: "kettlewell_w998jo", content_type: "image/jpg")
kettlewell.save

dales2 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1678020123/ribblehead_uzc9nj.jpg")
ribblehead = Poi.new(
  name: "Ribblehead Viaduct",
  category: "Landmarks",
  description: "The Ribblehead Viaduct or Batty Moss Viaduct carries the Settle–Carlisle railway across Batty Moss
  in the Ribble Valley at Ribblehead, in North Yorkshire, England. The viaduct, built by the Midland Railway, is 28
  miles north-west of Skipton and 26 miles south-east of Kendal. It is a Grade II* listed structure.",
  address: "Low Sleights Rd, Carnforth LA6 3AU"
)
ribblehead.photo.attach(io: dales2, filename: "ribblehead_uzc9nj", content_type: "image/jpg")
ribblehead.save

ingleton1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/ingleton_kjxmcg.jpg")
ingleton = Poi.new(
  name: "Ingleton Waterfalls Trail",
  category: "Sights",
  description: "Ingleton Waterfalls Trail is a well-known circular trail beginning and ending in the village of
  Ingleton in the English county of North Yorkshire, now maintained by the Ingleton Scenery Company.",
  address: "Broadwood Entrance, Ingleton, Carnforth LA6 3ET"
)
ingleton.photo.attach(io: ingleton1, filename: "ingleton_kjxmcg", content_type: "image/jpg")
ingleton.save

pantry1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438008/wensledale_jrqdmp.jpg")
pantry = Poi.new(
  name: "Wensleydale Pantry",
  category: "Eats",
  description: "Cafe, British",
  address: "1 Market Pl, Hawes DL8 3QX"
)
pantry.photo.attach(io: pantry1, filename: "wensledale_jrqdmp", content_type: "image/jpg")
pantry.save

buttertubs_pass1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438005/buttertubs_opgdix.jpg")
buttertubs_pass = Poi.new(
  name: "Buttertubs Pass",
  category: "Scenic roads",
  description: "Buttertubs Pass is a mountain pass located in the Yorkshire Dales. The climb was rated by Jeremy Clarkson as England’s only truly spectacular road.",
  address: "DL11 6DR"
)
buttertubs_pass.photo.attach(io: buttertubs_pass1, filename: "buttertubs_opgdix", content_type: "image/jpg")
buttertubs_pass.save

windermere1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438007/lake-windermere_twnbr4.jpg")
windermere = Poi.new(
  name: "Windermere",
  category: "Sights",
  description: "Windermere is a large lake in Cumbria’s Lake District National Park, northwest England. It’s surrounded
  by mountain peaks and villages, including Bowness-on-Windermere, where The World of Beatrix Potter Attraction has
  modern displays on the children’s writer. In the north, trails lead to Orrest Head, a hill with views across the lake
  and the fells beyond, and Holehird Gardens, with their alpines, heathers and shrubs.",
  address: "Windermere"
)
windermere.photo.attach(io: windermere1, filename: "lake-windermere_twnbr4", content_type: "image/jpg")
windermere.save

loughrigg1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438007/loughrigg_qs4psj.jpg")
loughrigg = Poi.new(
  name: "Loughrigg Fell",
  category: "Sights",
  description: "Loughrigg Fell is a hill in the central part of the English Lake District. It stands on the end of the
  long ridge coming down from High Raise over Silver How towards Ambleside, and is separated from its neighbours by the
  depression of Red Bank.",
  address: "Loughrigg Fell"
)
loughrigg.photo.attach(io: loughrigg1, filename: "loughrigg_qs4psj", content_type: "image/jpg")
loughrigg.save

rydal1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438008/rydal_dwqzhy.jpg")
rydal = Poi.new(
  name: "Rydal Water",
  category: "Sights",
  description: "Rydal Water is a small body of water in the central part of the English Lake District, in the county of
  Cumbria. It is located near the hamlet of Rydal, between Grasmere and Ambleside in the Rothay Valley. The lake is
  1,290 yards long and varies in width up to a maximum of 380 yards, covering an area of 0.12 mi².",
  address: "Ambleside, LA22 9HQ"
)
rydal.photo.attach(io: rydal1, filename: "rydal_dwqzhy", content_type: "image/jpg")
rydal.save

pie1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438008/pie_rz1bm8.jpg")
pie = Poi.new(
  name: "Great North Pie Company",
  category: "Eats",
  description: "Pie restaurant",
  address: "Unit 2, Great north pie, Rothay Rd, Ambleside LA22 0EE"
)
pie.photo.attach(io: pie1, filename: "pie_rz1bm8", content_type: "image/jpg")
pie.save
# dales pois end

le_wagon1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438006/le-wagon_ineydn.jpg")
le_wagon = Poi.new(
  name: "Le Wagon London",
  category: "Landmarks",
  description: "Computer training school in London, England",
  address: "138 Kingsland Road, London E2 8DY"
)
le_wagon.photo.attach(io: le_wagon1, filename: "le-wagon_ineydn", content_type: "image/jpg")
le_wagon.save

wagamama1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679508892/Wagamama_ryztzb.jpg")
wagamama = Poi.new(
  name: "Wagamama leamington spa",
  category: "Eats",
  description: "Asian-inspired & Japanese chain restaurant where dishes are whisked to long communal tables.",
  address: "94 parade leamington spa, warwickshire cv32 4ay"
)
wagamama.photo.attach(io: wagamama1, filename: "Wagamama_ryztzb", content_type: "image/jpg")
wagamama.save

wine1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679071084/wine1_lcieyu.webp")
wine_shop = Poi.new(
  name: "Hedonism Wines",
  category: "Eats",
  description: "Happening boutique with a huge selection of top-shelf wines & spirits, tastings & a kids' play area.",
  address: "3-7 Davies St, London W1K 3DJ"
)
wine_shop.photo.attach(io: wine1, filename: "wine1_lcieyu", content_type: "image/webp")
wine_shop.save

date1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679074390/ritz1_s36m4p.jpg")
ritz = Poi.new(
  name: "The Ritz London",
  category: "Eats",
  description: "Iconic luxury hotel with a spa & dining",
  address: "150 Piccadilly, St. James's, London W1J 9BR"
)
ritz.photo.attach(io: date1, filename: "ritz1_s36m4p", content_type: "image/jpg")
ritz.save

north_coast1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679438007/nc500_j5mrcr.jpg")
north_coast = Poi.new(
  name: "North Coast 500",
  category: "Scenic Roads",
  description: "The North Coast 500 is a 516-mile scenic route around the north coast of Scotland,
  starting and ending at Inverness Castle. The route is also known as the NC500 and was launched in 2015,
  linking many features in the north Highlands of Scotland in one touring route.",
  address: "17-19 High St, Inverness IV1 1HY, UK"
)
north_coast.photo.attach(io: north_coast1, filename: "nc500_j5mrcr", content_type: "image/jpg")
north_coast.save

bealach1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679507329/Bealach-na-Ba%CC%80_extumi.jpg")
bealach = Poi.new(
  name: "Bealach na Bà",
  category: "Fun Roads",
  description: "One of the driving highlights of the North Coast 500 is the infamous winding mountain pass
  road known as the Bealach na Bà, which means Pass of the Cattle in Gaelic.",
  address: "IV54 8NE, Strathcarron, Highland, Scotland, United Kingdom"
)
bealach.photo.attach(io: bealach1, filename: "Bealach-na-Bà_extumi", content_type: "image/jpg")
bealach.save

john_o_groats1 = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1679507329/johnogroates_zpu1wu.jpg")
john_o_groats = Poi.new(
  name: "John o' Groats",
  category: "Landmarks",
  description: "John o' Groats is a village 2.5 mi northeast of Canisbay, Caithness, in the far north of Scotland.",
  address: "John o' Groats, Highland, Scotland, United Kingdom"
)
john_o_groats.photo.attach(io: john_o_groats1, filename: "johnogroates_zpu1wu", content_type: "image/jpg")
john_o_groats.save

puts "creating trip_pois"

TripPoi.create!(trip: nc500, poi: north_coast)
TripPoi.create!(trip: nc500, poi: bealach)
TripPoi.create!(trip: nc500, poi: john_o_groats)

# northern_ireland TripPois start
TripPoi.create!(trip: northern_ireland, poi: giants_causeway)
TripPoi.create!(trip: northern_ireland, poi: rope_bridge)
TripPoi.create!(trip: northern_ireland, poi: bushmills)
TripPoi.create!(trip: northern_ireland, poi: dark_hedges)
# northern_ireland TripPois start

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

TripPoi.create!(trip: leamington, poi: le_wagon)
TripPoi.create!(trip: leamington, poi: wagamama)

TripPoi.create!(trip: wine, poi: wine_shop)

TripPoi.create!(trip: date, poi: ritz)

TripPoi.create!(trip: glasto, poi: stonehenge)
TripPoi.create!(trip: glasto, poi: cheddar_gorge)
TripPoi.create!(trip: glasto, poi: pyramid)

TripPoi.create!(trip: up_north, poi: rushton_hall)
TripPoi.create!(trip: up_north, poi: the_white_bear)
TripPoi.create!(trip: up_north, poi: buttertubs_pass)
TripPoi.create!(trip: up_north, poi: hadrians)

TripPoi.create!(trip: brewhouse, poi: le_wagon)
TripPoi.create!(trip: brewhouse, poi: brew)


# review seeds start
review1 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 1,
  trip_id: 1
)
review1.save

review2 = Review.new(
  rating: 4,
  content: "I had a great time",
  user_id: 22,
  trip_id: 1
)
review2.save

review3 = Review.new(
  rating: 3,
  content: "It was ok",
  user_id: 4,
  trip_id: 1
)
review3.save

review4 = Review.new(
  rating: 5,
  content: "Very good trip",
  user_id: 5,
  trip_id: 1
)
review4.save

review5 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 23,
  trip_id: 2
)
review5.save

review6 = Review.new(
  rating: 5,
  content: "Brilliant trip!",
  user_id: 8,
  trip_id: 2
)
review6.save

review7 = Review.new(
  rating: 4,
  content: "It was good. We had fun!",
  user_id: 14,
  trip_id: 2
)
review7.save

review7 = Review.new(
  rating: 4,
  content: "I had a good time",
  user_id: 16,
  trip_id: 2
)
review7.save

review8 = Review.new(
  rating: 5,
  content: "Some great suggestions!",
  user_id: 27,
  trip_id: 2
)
review8.save

review9 = Review.new(
  rating: 5,
  content: "Brilliant trip!",
  user_id: 25,
  trip_id: 1
)
review9.save

review10 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 8,
  trip_id: 3
)
review10.save

review11 = Review.new(
  rating: 4,
  content: "I had a great time",
  user_id: 7,
  trip_id: 3
)
review11.save

review12 = Review.new(
  rating: 3,
  content: "It was ok",
  user_id: 9,
  trip_id: 3
)
review12.save

review13 = Review.new(
  rating: 5,
  content: "Very good trip",
  user_id: 10,
  trip_id: 3
)
review13.save

review14 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 11,
  trip_id: 3
)
review14.save

review15 = Review.new(
  rating: 5,
  content: "Brilliant trip!",
  user_id: 12,
  trip_id: 3
)
review15.save

review16 = Review.new(
  rating: 4,
  content: "It was good. We had fun!",
  user_id: 13,
  trip_id: 3
)
review16.save

review17 = Review.new(
  rating: 4,
  content: "I had a good time",
  user_id: 14,
  trip_id: 3
)
review17.save

review18 = Review.new(
  rating: 5,
  content: "Some great suggestions!",
  user_id: 26,
  trip_id: 3
)
review18.save

review19 = Review.new(
  rating: 5,
  content: "Brilliant trip!",
  user_id: 25,
  trip_id: 4
)
review19.save

review20 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 4,
  trip_id: 4
)
review20.save

review21 = Review.new(
  rating: 4,
  content: "I had a great time",
  user_id: 22,
  trip_id: 4
)
review21.save

review22 = Review.new(
  rating: 2,
  content: "It was ok I guess",
  user_id: 6,
  trip_id: 4
)
review22.save

review23 = Review.new(
  rating: 5,
  content: "Very good trip",
  user_id: 5,
  trip_id: 4
)
review23.save

review24 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 24,
  trip_id: 4
)
review24.save

review25 = Review.new(
  rating: 1,
  content: "It's a no from me 👎",
  user_id: 9,
  trip_id: 4
)
review25.save

review26 = Review.new(
  rating: 4,
  content: "It was good. We had fun!",
  user_id: 14,
  trip_id: 4
)
review26.save

review27 = Review.new(
  rating: 4,
  content: "I had a good time",
  user_id: 16,
  trip_id: 4
)
review27.save

review28 = Review.new(
  rating: 5,
  content: "Some great suggestions!",
  user_id: 27,
  trip_id: 4
)
review28.save

review29 = Review.new(
  rating: 5,
  content: "Brilliant trip!",
  user_id: 26,
  trip_id: 4
)
review29.save

review30 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 1,
  trip_id: 5
)
review30.save

review31 = Review.new(
  rating: 4,
  content: "I had a great time",
  user_id: 25,
  trip_id: 5
)
review31.save

review32 = Review.new(
  rating: 3,
  content: "It was ok",
  user_id: 4,
  trip_id: 5
)
review32.save

review33 = Review.new(
  rating: 5,
  content: "Very good trip",
  user_id: 5,
  trip_id: 6
)
review33.save

review34 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 23,
  trip_id: 6
)
review34.save

review35 = Review.new(
  rating: 5,
  content: "Brilliant trip!",
  user_id: 8,
  trip_id: 6
)
review35.save

review36 = Review.new(
  rating: 4,
  content: "It was good. We had fun!",
  user_id: 14,
  trip_id: 6
)
review36.save

review36 = Review.new(
  rating: 4,
  content: "I had a good time",
  user_id: 16,
  trip_id: 7
)
review36.save

review37 = Review.new(
  rating: 5,
  content: "Some great suggestions!",
  user_id: 27,
  trip_id: 7
)
review37.save

review38 = Review.new(
  rating: 5,
  content: "Brilliant trip!",
  user_id: 26,
  trip_id: 7
)
review38.save

review39 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 1,
  trip_id: 8
)
review39.save

review40 = Review.new(
  rating: 5,
  content: "The best trip to the greatest pub of all time!",
  user_id: 17,
  trip_id: 10
)
review40.save

review41 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 6,
  trip_id: 10
)
review41.save

review42 = Review.new(
  rating: 5,
  content: "Brilliant trip!",
  user_id: 5,
  trip_id: 10
)
review42.save

review43 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 6,
  trip_id: 10
)
review43.save

review44 = Review.new(
  rating: 5,
  content: "Amazing trip! Thanks for the suggestions!",
  user_id: 7,
  trip_id: 10
)
review44.save

review45 = Review.new(
  rating: 5,
  content: "What a great trip! Thanks for the suggestions!",
  user_id: 8,
  trip_id: 10
)
review45.save

review46 = Review.new(
  rating: 5,
  content: "The best pub ever!",
  user_id: 9,
  trip_id: 10
)
review46.save

review47 = Review.new(
  rating: 5,
  content: "What a great trip!",
  user_id: 9,
  trip_id: 9
)
review47.save

review48 = Review.new(
  rating: 4,
  content: "Very good trip",
  user_id: 17,
  trip_id: 9
)
review48.save

review49 = Review.new(
  rating: 3,
  content: "It was ok",
  user_id: 26,
  trip_id: 9
)
review49.save

review50 = Review.new(
  rating: 5,
  content: "What a great trip!",
  user_id: 19,
  trip_id: 9
)
review50.save

# review seeds end

# booking seeds start
booking1 = Booking.new(
  user_id: 19,
  trip_id: 8,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking1.save

booking2 = Booking.new(
  user_id: 27,
  trip_id: 3,
  :start_date => DateTime.strptime("20/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("27/05/2023", "%d/%m/%Y")
)
booking2.save

booking3 = Booking.new(
  user_id: 26,
  trip_id: 3,
  :start_date => DateTime.strptime("12/04/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("15/04/2023", "%d/%m/%Y")
)
booking3.save

booking4 = Booking.new(
  user_id: 25,
  trip_id: 3,
  :start_date => DateTime.strptime("24/06/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("28/06/2023", "%d/%m/%Y")
)
booking4.save

booking5 = Booking.new(
  user_id: 24,
  trip_id: 3,
  :start_date => DateTime.strptime("07/08/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("13/08/2023", "%d/%m/%Y")
)
booking5.save

booking6 = Booking.new(
  user_id: 23,
  trip_id: 4,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("09/05/2023", "%d/%m/%Y")
)
booking6.save

booking7 = Booking.new(
  user_id: 22,
  trip_id: 4,
  :start_date => DateTime.strptime("14/06/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("18/06/2023", "%d/%m/%Y")
)
booking7.save

booking8 = Booking.new(
  user_id: 21,
  trip_id: 4,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking8.save

booking9 = Booking.new(
  user_id: 20,
  trip_id: 4,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking9.save

booking10 = Booking.new(
  user_id: 19,
  trip_id: 4,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking10.save

booking11 = Booking.new(
  user_id: 18,
  trip_id: 2,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking11.save

booking12 = Booking.new(
  user_id: 17,
  trip_id: 2,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking12.save

booking13 = Booking.new(
  user_id: 16,
  trip_id: 2,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking13.save

booking14 = Booking.new(
  user_id: 15,
  trip_id: 2,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking14.save

booking15 = Booking.new(
  user_id: 14,
  trip_id: 2,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking15.save

booking16 = Booking.new(
  user_id: 13,
  trip_id: 1,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking16.save

booking17 = Booking.new(
  user_id: 12,
  trip_id: 1,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking17.save

booking18 = Booking.new(
  user_id: 11,
  trip_id: 1,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking18.save

booking19 = Booking.new(
  user_id: 10,
  trip_id: 1,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking19.save

booking20 = Booking.new(
  user_id: 9,
  trip_id: 5,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking20.save

booking21 = Booking.new(
  user_id: 8,
  trip_id: 5,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking21.save

booking22 = Booking.new(
  user_id: 7,
  trip_id: 6,
  :start_date => DateTime.strptime("05/05/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("12/05/2023", "%d/%m/%Y")
)
booking22.save

booking23 = Booking.new(
  user_id: 18,
  trip_id: 10,
  :start_date => DateTime.strptime("25/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("25/03/2023", "%d/%m/%Y")
)
booking23.save

booking24 = Booking.new(
  user_id: 5,
  trip_id: 10,
  :start_date => DateTime.strptime("25/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("25/03/2023", "%d/%m/%Y")
)
booking24.save

booking25 = Booking.new(
  user_id: 6,
  trip_id: 10,
  :start_date => DateTime.strptime("25/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("25/03/2023", "%d/%m/%Y")
)
booking25.save

booking26 = Booking.new(
  user_id: 7,
  trip_id: 10,
  :start_date => DateTime.strptime("25/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("25/03/2023", "%d/%m/%Y")
)
booking26.save

booking27 = Booking.new(
  user_id: 8,
  trip_id: 10,
  :start_date => DateTime.strptime("25/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("25/03/2023", "%d/%m/%Y")
)
booking27.save

booking28 = Booking.new(
  user_id: 19,
  trip_id: 10,
  :start_date => DateTime.strptime("25/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("25/03/2023", "%d/%m/%Y")
)
booking28.save

booking29 = Booking.new(
  user_id: 10,
  trip_id: 10,
  :start_date => DateTime.strptime("25/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("25/03/2023", "%d/%m/%Y")
)
booking29.save

booking30 = Booking.new(
  user_id: 11,
  trip_id: 10,
  :start_date => DateTime.strptime("25/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("25/03/2023", "%d/%m/%Y")
)
booking30.save

booking30 = Booking.new(
  user_id: 12,
  trip_id: 10,
  :start_date => DateTime.strptime("25/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("25/03/2023", "%d/%m/%Y")
)
booking30.save

booking30 = Booking.new(
  user_id: 15,
  trip_id: 9,
  :start_date => DateTime.strptime("26/03/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("28/03/2023", "%d/%m/%Y")
)
booking30.save

booking30 = Booking.new(
  user_id: 16,
  trip_id: 9,
  :start_date => DateTime.strptime("25/04/2023", "%d/%m/%Y"),
  :end_date => DateTime.strptime("27/04/2023", "%d/%m/%Y")
)
booking30.save
# booking seeds end

puts "Finished!"
