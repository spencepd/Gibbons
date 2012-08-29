# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Charity.delete_all
Charity.create(name: 'American Red Cross',
  description: 'Helping people prevent, prepare for and respond to emergencies',
  overall: 59.64,
  financial: 55.35,
  accountability: 70.00)
# . . .
Charity.create(name: 'World Vision',
  description: 'Building a better world for children',
  overall: 64.60,
  financial: 62.98,
  accountability: 67.00)