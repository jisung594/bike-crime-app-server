# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'

User.destroy_all
Incident.destroy_all


# THEFTS
theft_data = RestClient.get('https://bikewise.org:443/api/v2/incidents?page=1&incident_type=theft&proximity=666%20Broadway%2C%20New%20York%2C%20NY%2C%2010012&proximity_square=12')
parsed_data1 = JSON.parse(theft_data)

parsed_data1["incidents"].each do |theftObj|
  Incident.create(
    title: theftObj["title"],
    description: theftObj["description"],
    address: theftObj["address"],
    occurred_at: theftObj["occurred_at"],
    type_of: theftObj["type"],
    image: theftObj["media"]["image_url"]
  )
end


# CRASH ACCIDENTS
crash_data = RestClient.get('https://bikewise.org:443/api/v2/incidents?page=1&incident_type=crash&proximity=666%20Broadway%2C%20New%20York%2C%20NY%2C%2010012&proximity_square=12')
parsed_data2 = JSON.parse(crash_data)

parsed_data2["incidents"].each do |crashObj|
  Incident.create(
    title: crashObj["title"],
    description: crashObj["description"],
    address: crashObj["address"],
    occurred_at: crashObj["occurred_at"],
    type_of: crashObj["type"],
    image: crashObj["media"]["image_url"]
  )
end


# HAZARDS
hazard_data = RestClient.get('https://bikewise.org:443/api/v2/incidents?page=1&incident_type=hazard&proximity=666%20Broadway%2C%20New%20York%2C%20NY%2C%2010012&proximity_square=12')
parsed_data3 = JSON.parse(hazard_data)

parsed_data3["incidents"].each do |hazardObj|
  Incident.create(
    title: hazardObj["title"],
    description: hazardObj["description"],
    address: hazardObj["address"],
    occurred_at: hazardObj["occurred_at"],
    type_of: hazardObj["type"],
    image: hazardObj["media"]["image_url"]
  )
end


# UNCONFIRMED
unconfirmed_data = RestClient.get('https://bikewise.org:443/api/v2/incidents?page=1&incident_type=unconfirmed&proximity=666%20Broadway%2C%20New%20York%2C%20NY%2C%2010012&proximity_square=12')
parsed_data4 = JSON.parse(unconfirmed_data)

parsed_data4["incidents"].each do |unconfirmedObj|
  Incident.create(
    title: unconfirmedObj["title"],
    description: unconfirmedObj["description"],
    address: unconfirmedObj["address"],
    occurred_at: unconfirmedObj["occurred_at"],
    type_of: unconfirmedObj["type"],
    image: unconfirmedObj["media"]["image_url"]
  )
end
