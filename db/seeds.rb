# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

pup1 = Pup.create!(name: "Sir Geoffrey Drake Arrington")
pup2 = Pup.create!(name: "Miss Islay Mae Arrington")

walker1 = Walker.create!(name: "Brad")
walker2 = Walker.create!(name: "Elyse")

Walk.create!(pup: pup1, walker: walker2, day: "Wednesday")
Walk.create!(pup: pup2, walker: walker1, day: "Friday")
