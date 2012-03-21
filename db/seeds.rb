# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

School.delete_all

json = File.open("/Users/jlugo/rails_projects/gradeschoolapp/app/assets/data/cook.json").read
  schools=JSON.parse(json)

  schools['groupings']['elementary_schools'].each do |school|
    School.create(
      latitude: school['location'][0],
      longitude: school['location'][1],
      name: school['name'],
      telephone: school['telephone'],
      address: school['address'],
      zip: school['zip'],
      city:school['city'],
      school_type: school['school type'],
      demographics: school['demographics'],
      groupings: school['groupings'],
      )  
  end 
