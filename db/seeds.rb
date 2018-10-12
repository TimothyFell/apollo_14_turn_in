# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mission_1 = Mission.create(title:'Apollo 14', time_in_space: 120)

astro_1 = mission_1.astronauts.create(name: 'Neil Armstrong', age: 36, job: 'Commander')

astro_2 = mission_1.astronauts.create(name: 'Buzz Lightyear', age: 40, job: 'Security Officer')

astro_3 = mission_1.astronauts.create(name: 'Jeff Strongarm', age: 28, job: 'Pilot')


mission_2 = Mission.create(title:'Gemini 2', time_in_space: 120)

astro_4 = mission_2.astronauts.create(name: 'Sherry Longstride', age: 42, job: 'Engineer')

astro_5 = mission_2.astronauts.create(name: 'Jess Connalie', age: 32, job: 'Science Officer')

astro_6 = mission_2.astronauts.create(name: 'Nelix', age: 38, job: 'Moral Officer')

mission_3 = Mission.create(title:'Charger 1', time_in_space: 120)

mission_3.astronauts << astro_1
mission_3.astronauts << astro_2
mission_3.astronauts << astro_3
mission_3.astronauts << astro_4
mission_3.astronauts << astro_5

mission_4 = Mission.create(title:'Challenger 8', time_in_space: 120)

mission_4.astronauts << astro_1
mission_4.astronauts << astro_2
mission_4.astronauts << astro_3
mission_4.astronauts << astro_4
mission_4.astronauts << astro_5
mission_4.astronauts << astro_6
