# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all

Character.create(
  name: 'Arven Dhentry',
  player_name: 'Logan',
  ancestry_and_heritage: 'Half-Elf',
  background: 'Detective',
  character_class: 'Investigator',
  size: 'M',
  alignment: 'NG',
  traits: 'Paranoid',
  deity: 'Alseta',
  level: 1,
  hero_points: 0,
  experience_points: 0
)
