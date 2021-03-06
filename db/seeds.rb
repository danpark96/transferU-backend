require_relative '../config/environment'
require 'rest-client'

response = RestClient.get("http://localhost:8100/colleges?order=name&page=1,10000&transform=1")

allSchools = JSON.parse(response)["colleges"]

filteredSchools = allSchools.filter do |school|
  !school["address"]["addressRegion"].include?("PR") && !school["name"].include?("Opportunity") && !school["name"].include?("WyoTech") && !school["name"].include?("Colleges") && !school["name"].include?("Industr") && !school["name"].include?("College of") && !school["name"].include?("Beth ") && !school["name"].include?("Berea") && !school["name"].include?("Aveda") && !school["name"].include?("Pharma") && !school["name"].include?("Media") && !school["name"].include?("ILSC") && !school["name"].include?("Antonelli") && !school["name"].include?("Graduate") && !school["name"].include?("Educators") && !school["name"].include?("Upper Bucks") && !school["name"].include?("Paul Mitchell") && !school["name"].include?("Studies") && !school["name"].include?("Divinity") && !school["name"].include?("Learning") && !school["name"].include?("De Anza") && !school["name"].include?("International") && !school["name"].include?("OISE") && !school["name"].include?("Visual") && !school["name"].include?("Concordia") && !school["name"].include?("Ballet") && !school["name"].include?("Public") && !school["name"].include?("Boat") && !school["name"].include?(" Inc") && !school["name"].include?("Construction") && !school["name"].include?("Conservatory") && !school["name"].include?("Group") && !school["name"].include?("Radio") && !school["name"].include?("Online") && !school["name"].include?("Auto") && !school["name"].include?("Albany-Schoharie-Schenectady BOCES") && !school["name"].include?("Therap") && !school["name"].include?("Air") && !school["name"].include?("ACT") && !school["name"].include?("AmsEd") && !school["name"].include?("ACE") && !school["name"].include?("AmeriTech") && !school["name"].include?("Theatre") && !school["name"].include?("Management") && !school["name"].include?("Make") && !school["name"].include?("Defense") && !school["name"].include?("Institute for") && !school["name"].include?("Blind") && !school["name"].include?("Inc.") && !school["name"].include?("inlingua") && !school["name"].include?("ICDC") && !school["name"].include?("Truck") && !school["name"].include?("National") && !school["name"].include?("Tomorrow")  && !school["name"].include?("Esthetics") && !school["name"].include?("Theolo") && !school["name"].include?("Partner") && !school["name"].include?("Beis Medrash Heichal Dovid") && !school["name"].include?("Rabbinical") && !school["name"].include?("English") && !school["name"].include?("Yeshiva") && !school["name"].include?("Services")  && !school["name"].include?("Access") && !school["name"].include?("Professional") && !school["name"].include?("Associates") && !school["name"].include?("Office") && !school["name"].include?("Collective") && !school["name"].include?("Applied") && !school["name"].include?("Midwife") && !school["name"].include?("Trade") && !school["name"].include?("Mechanical") && !school["name"].include?("Agricultural") && !school["name"].include?("ABCO") && !school["name"].include?("Nail") && !school["name"].include?("Bible") && !school["name"].include?("Beauty") && !school["name"].include?("Solutions") && !school["name"].include?("Aaniiih") && !school["name"].include?("Aviation") && !school["name"].include?("Optometry") && !school["name"].include?("Clinic") && !school["name"].include?("Ultrasound") && !school["name"].include?("Internship") && !school["name"].include?("Association") && !school["name"].include?("Program") && !school["name"].include?("Village") && !school["name"].include?("Children") && !school["name"].include?("Hair") && !school["name"].include?("Massage") && !school["name"].include?("Occupation") && !school["name"].include?("Recording") && !school["name"].include?("Dental") && !school["name"].include?("LLC") && !school["name"].include?("Medical") && !school["name"].include?("Nursing") && !school["name"].include?("Church") && !school["name"].include?("Oriental") && !school["name"].include?("Therapy") && !school["name"].include?("Advanced") && !school["name"].include?("Health") && !school["name"].include?("Hospital") && !school["name"].include?("Vocational") && !school["name"].include?("Health") && !school["name"].include?("Academy") && !school["name"].include?("Medicine") && !school["name"].include?("Technical") && !school["name"].include?("Adult") && !school["name"].include?("Community") && !school["name"].include?("Career") && !school["name"].include?("Cosmetology") && !school["name"].include?("Dentistry") && !school["name"].include?("Barber") && !school["name"].include?("Training") && !school["name"].include?("Commercial") && !school["name"].include?("Culinary") && !school["name"].include?("Center") && !school["name"].include?("Teacher") && !school["name"].include?("Care") && !school["name"].include?("Residency") && !school["name"].include?("General") && !school["name"].include?("Practice") && !school["name"].include?("Education") && !school["name"].include?("Ocular") && !school["name"].include?("Ocular") && !school["name"].include?("Seminary") && !school["name"].include?("Language")   
end

filteredSchools.each do |school|
  name = school["name"]
  address = school["address"]["streetAddress"] + " " + school["address"]["addressRegion"] + " " + school["address"]["postalCode"]
  state = school["address"]["addressRegion"]

  School.create(name: name, address: address, state: state)
end

users = [
  {username: 'danp', password: 'words'},
  {username: 'danz', password: 'words'},
  {username: 'coal', password: 'words'},
  {username: 'coal2', password: 'words'}
]

profiles = [
  {name: 'Dan Park', age: 23, bio: 'I\'m going to be honest, I have no idea what I\'m doing.', avatarURL: 'https://www.sackettwaconia.com/wp-content/uploads/default-profile.png', school_id: 2929, user_id: 1},
  {name: 'Dan Zaltsman', age: 27, bio: 'I have this lump at the bottom of my abdomen and it hurts a lot.  It feels good to push it in though.  I\'m pretty sure it\'s not a hernia.', avatarURL: 'https://www.sackettwaconia.com/wp-content/uploads/default-profile.png', school_id: 2929, user_id: 2},
  {name: 'Cole Ditzler', age: 27, bio: 'Dude, cats are, um, mammals.', avatarURL: 'https://www.sackettwaconia.com/wp-content/uploads/default-profile.png', school_id: 2929, user_id: 3},
  {name: 'Cole Ditzler', age: 27, bio: 'Dude, cats are, um, mammals.', avatarURL: 'https://www.sackettwaconia.com/wp-content/uploads/default-profile.png', school_id: 3115, user_id: 4}
]

categories = [
  {name: 'Outdoor'},
  {name: 'Social'},
  {name: 'Athletic'},
  {name: 'Academic'},
  {name: 'Other'}
]

events = [
  {name: 'Pick Up Pennies', date: '12-25-2020', time: '12:00 pm', description: 'We\'ll be picking up pennies on the ground. Make sure they aren\'t actually holes so you don\'t fall in.', location: '1411 4th Ave Seattle, WA 98101', attendees: 3, category_id: 2, school_id: 2929, user_id: 3},
  {name: 'Basketball', date: '1-15-2020', time: '2:30 pm', description: 'I am a long person looking for other people to play basketball with. My shooting isn\'t very accurate so if you\'re a good shooter then please sign up.', location: '3924 Montlake Blvd NE, Seattle, WA 98195', attendees: 2, category_id: 3, school_id: 2929, user_id: 2},
  {name: 'Going to H Mart', date: '1-19-2020', time: '9:30 am', description: 'I\'m going to H Mart if anyone wants to come along.', location: '4216 The Ave, Seattle, WA 98105', attendees: 0, category_id: 1, school_id: 2929, user_id: 1},
  {name: 'Country Roads', date: '4-12-1971', time: '12:00 am', description: 'Country roads, take me home, to the place I belong. West Virginia, mountain mama, take me home, country roads', location: 'Shenandoah River', attendees: 0, category_id: 5, school_id: 3115, user_id: 4}
]

event_profiles = [
  {event_id: 1, profile_id: 1, attending: true},
  {event_id: 1, profile_id: 2, attending: true},
  {event_id: 1, profile_id: 3, attending: true},
  {event_id: 2, profile_id: 2, attending: true},
  {event_id: 2, profile_id: 1, attending: true}
]

users.each { |user| User.create(user) }
profiles.each { |profile| Profile.create(profile) }
categories.each { |category| Category.create(category) }
events.each { |event| Event.create(event) }
event_profiles.each { |event_profile| EventProfile.create(event_profile)}