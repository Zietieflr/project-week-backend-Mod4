# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AbilityScore.destroy_all
Character.destroy_all

arven = Character.create(
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

AbilityScore.create(
  str: 12,
  dex: 12,
  con: 12,
  int: 21,
  wis: 10,
  cha: 7,
  character: arven
)

ankar = Character.create(
  name: 'Ankar Flowstep',
  player_name: 'Logan',
  ancestry_and_heritage: 'Halfling',
  background: 'Dancer',
  character_class: 'Bard',
  size: 'S',
  alignment: 'CG',
  traits: 'Gregarious',
  deity: 'Desna',
  level: 1,
  hero_points: 0,
  experience_points: 0
)

AbilityScore.create(
  str: 6,
  dex: 18,
  con: 12,
  int: 10,
  wis: 8,
  cha: 19,
  character: ankar
)
