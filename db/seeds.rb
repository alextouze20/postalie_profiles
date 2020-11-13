require "open-uri"

puts "Cleaning database..."

Profile.destroy_all
User.destroy_all

puts "Creating 6 users..."

alex = User.new( { email: "alex@postalie.com", password: "azertyuiop" } )
alex.save

arthur = User.new( { email: "arthur@postalie.com", password: "azertyuiop" } )
arthur.save

boubou = User.new( { email: "boubou@postalie.com", password: "azertyuiop" } )
boubou.save

fred = User.new( { email: "fred@postalie.com", password: "azertyuiop" } )
fred.save

sophie = User.new( { email: "sophie@postalie.com", password: "azertyuiop" } )
sophie.save

laurent = User.new( { email: "laurent@postalie.com", password: "azertyuiop" } )
laurent.save

puts "Creating profile Alex..."

profile_alex = Profile.new( {
  firstname: "Alex",
  lastname: "Touze",
  dob: "20/12/1993",
  address_street1: "Legalitat 13,",
  address_city: "Barcelona",
  address_zip: "08024",
  address_country: "Spain"
  } )

photo_alex = URI.open("https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
profile_alex.photo.attach(io: photo_alex, filename: 'pp-alex.jpg', content_type: 'image/jpg')
profile_alex.save

alex.profile = profile_alex

puts "Creating profile Arthur..."

profile_arthur = Profile.new( {
  firstname: "Arthur",
  lastname: "Touze",
  dob: "20/12/1993",
  address_street1: "Legalitat 13,",
  address_zip: "08024",
  address_city: "Barcelona",
  address_country: "Spain"
  } )

photo_arthur = URI.open("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
profile_arthur.photo.attach(io: photo_arthur, filename: 'pp-arthur.jpg', content_type: 'image/jpg')
profile_arthur.save

arthur.profile = profile_arthur

puts "Creating profile Boubou..."

profile_boubou = Profile.new( {
  firstname: "Boutayna",
  lastname: "Jalili",
  dob: "20/12/1993",
  address_city: "Barcelona",
  address_street1: "Legalitat 13,",
  address_zip: "08024",
  address_country: "Spain"
  } )

photo_boubou = URI.open("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
profile_boubou.photo.attach(io: photo_boubou, filename: 'pp-boubou.jpg', content_type: 'image/jpg')
profile_boubou.save

boubou.profile = profile_boubou

puts "Creating profile Fred..."

profile_fred = Profile.new( {
  firstname: "Fred",
  lastname: "Touze",
  dob: "20/12/1993",
  address_city: "Barcelona",
  address_street1: "Legalitat 13,",
  address_zip: "08024",
  address_country: "Spain"
  } )

photo_fred = URI.open("https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
profile_fred.photo.attach(io: photo_fred, filename: 'pp-fred.jpg', content_type: 'image/jpg')
profile_fred.save

fred.profile = profile_fred

puts "Creating profile Sophie..."

profile_sophie = Profile.new( {
  firstname: "Sophie",
  lastname: "Touze",
  dob: "20/12/1993",
  address_city: "Barcelona",
  address_street1: "Legalitat 13,",
  address_zip: "08024",
  address_country: "Spain"
  } )

photo_sophie = URI.open("https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
profile_sophie.photo.attach(io: photo_sophie, filename: 'pp-sophie.jpg', content_type: 'image/jpg')
profile_sophie.save

sophie.profile = profile_sophie

puts "Creating profile Laurent..."

profile_laurent = Profile.new( {
  firstname: "Laurent",
  lastname: "Touze",
  dob: "20/12/1993",
  address_city: "Barcelona",
  address_street1: "Legalitat 13,",
  address_zip: "08024",
  address_country: "Spain"
  } )

photo_laurent = URI.open("https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
profile_laurent.photo.attach(io: photo_laurent, filename: 'pp-laurent.jpg', content_type: 'image/jpg')
profile_laurent.save

laurent.profile = profile_laurent
