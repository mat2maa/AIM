# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({:name => role}, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

Aeroplane.create(
    [
        {
            manufacturer: 'Boeing',
            name: '737-800'
        },
        {
            manufacturer: 'Airbus',
            name: 'A330 - 300'
        },
        {
            manufacturer: 'Airbus',
            name: 'A330'
        },
        {
            manufacturer: 'Airbus',
            name: 'A320'
        },
        {
            manufacturer: 'Airbus',
            name: 'A330 - 200'
        }
    ]
)

Script.create(
    [
        {
            aeroplane_id: 5
        }
    ]
)

LifeJacketAge.create(
    [
        {
            age: 'Adult'
        },
        {
            age: 'Child'
        },
        {
            age: 'Infant'
        }
    ]
)

LifeJacket.create(
    [
        {
            name: 'KSE-35L8',
            manufacturer: 'LSI',
            life_jacket_age_id: '1'
        },
        {
            name: 'KSD-35L8',
            manufacturer: 'LSI',
            life_jacket_age_id: '1'
        }
    ]
)

SeatClass.create(
    [
        {
            name: 'Economy'
        },
        {
            name: 'Business'
        },
        {
            name: 'First'
        }
    ]
)

SeatManufacturer.create(
    [
        {
            name: 'Recaro'
        },
        {
            name: 'ZIM Flugsitz GmbH'
        },
        {
            name: 'EADS Sogerma'
        },
        {
            name: 'Aviointeriors'
        },
        {
            name: 'Thompson Aero Seating'
        },
        {
            name: 'European Aviation'
        },
        {
            name: 'Zodiac Seats U.S.'
        }
    ]
)

SeatLayout.create(
    [
        {
            name: '3-3'
        },
        {
            name: '2-2'
        },
        {
            name: '3-2-3'
        },
        {
            name: '2-1'
        }
    ]
)
