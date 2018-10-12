require 'rails_helper'

describe 'As a visitor' do

  describe 'When I visit /astronauts' do

    before(:each) do

      @astro_1 = Astronaut.create(name: 'Neil Armstrong', age: 36, job: 'Commander')

      @astro_2 = Astronaut.create(name: 'Buzz Lightyear', age: 40, job: 'Security Officer')

      @astro_3 = Astronaut.create(name: 'Jeff Strongarm', age: 28, job: 'Pilot')

      @astro_4 = Astronaut.create(name: 'Sherry Longstride', age: 42, job: 'Engineer')

      @astro_5 = Astronaut.create(name: 'Jess Connalie', age: 32, job: 'Science Officer')

      @astro_5 = Astronaut.create(name: 'Nelix', age: 38, job: 'Moral Officer')

    end

    describe 'I see a list of astronauts with the following info:' do

      it '-Name' do
        visit '/astronauts'

        expect(page).to have_content("Name: #{@astro_1.name}")
      end

      it '-Age' do
        visit '/astronauts'

        expect(page).to have_content("Age: #{@astro_1.age}")
      end

      it '-Job' do
        visit '/astronauts'

        expect(page).to have_content("Job: #{@astro_1.job}")
      end

    end

    it 'I see the average age of all astronauts' do
      visit '/astronauts'

      expect(page).to have_content('Average Age: 36.0 years old')
    end

  end

end
