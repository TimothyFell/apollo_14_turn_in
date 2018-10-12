require 'rails_helper'

describe Astronaut, type: :model do

  before(:each) do

    @astro_1 = Astronaut.create(name: 'Neil Armstrong', age: 36, job: 'Commander')

    @astro_2 = Astronaut.create(name: 'Buzz Lightyear', age: 40, job: 'Security Officer')

    @astro_3 = Astronaut.create(name: 'Jeff Strongarm', age: 28, job: 'Pilot')

    @astro_4 = Astronaut.create(name: 'Sherry Longstride', age: 42, job: 'Engineer')

    @astro_5 = Astronaut.create(name: 'Jess Connalie', age: 32, job: 'Science Officer')

    @astro_6 = Astronaut.create(name: 'Nelix', age: 38, job: 'Moral Officer')

  end

  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  it 'average_age method returns average age of astronauts' do
    astronauts = Astronaut.all

    expect(astronauts.average_age.round(1)).to eq 36.0
  end
end
