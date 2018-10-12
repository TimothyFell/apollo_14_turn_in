# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

astro_1 = Astronaut.create(name: 'Neil Armstrong', age: 36, job: 'Commander')

astro_2 = Astronaut.create(name: 'Buzz Lightyear', age: 40, job: 'Security Officer')

astro_3 = Astronaut.create(name: 'Jeff Strongarm', age: 28, job: 'Pilot')

astro_4 = Astronaut.create(name: 'Sherry Longstride', age: 42, job: 'Engineer')

astro_5 = Astronaut.create(name: 'Jess Connalie', age: 32, job: 'Science Officer')

astro_6 = Astronaut.create(name: 'Nelix', age: 38, job: 'Moral Officer')
