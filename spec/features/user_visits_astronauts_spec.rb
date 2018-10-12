require 'rails_helper'

describe 'As a visitor' do

  describe 'When I visit /astronauts' do

    before(:each) do

      @mission_1 = Mission.create(title:'Apollo 14', time_in_space: 120)

      @astro_1 = @mission_1.astronauts.create(name: 'Neil Armstrong', age: 36, job: 'Commander')

      @astro_2 = @mission_1.astronauts.create(name: 'Buzz Lightyear', age: 40, job: 'Security Officer')

      @astro_3 = @mission_1.astronauts.create(name: 'Jeff Strongarm', age: 28, job: 'Pilot')


      @mission_2 = Mission.create(title:'Apollo 14', time_in_space: 120)

      @astro_4 = @mission_2.astronauts.create(name: 'Sherry Longstride', age: 42, job: 'Engineer')

      @astro_5 = @mission_2.astronauts.create(name: 'Jess Connalie', age: 32, job: 'Science Officer')

      @astro_6 = @mission_2.astronauts.create(name: 'Nelix', age: 38, job: 'Moral Officer')

      @mission_3 = Mission.create(title:'Apollo 14', time_in_space: 120)

      @mission_3.astronauts << @astro_1
      @mission_3.astronauts << @astro_2
      @mission_3.astronauts << @astro_3
      @mission_3.astronauts << @astro_4
      @mission_3.astronauts << @astro_5

      @mission_4 = Mission.create(title:'Apollo 14', time_in_space: 120)

      @mission_4.astronauts << @astro_1
      @mission_4.astronauts << @astro_2
      @mission_4.astronauts << @astro_3
      @mission_4.astronauts << @astro_4
      @mission_4.astronauts << @astro_5
      @mission_4.astronauts << @astro_6


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

    it 'I see a list of missions' do
      visit '/astronauts'

      expect(page).to have_content("Mission Name: #{@mission_1.title}")
      expect(page).to have_content("Mission Name: #{@mission_2.title}")
      expect(page).to have_content("Mission Name: #{@mission_3.title}")
      expect(page).to have_content("Mission Name: #{@mission_4.title}")
    end

  end

end
