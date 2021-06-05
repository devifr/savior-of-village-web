RSpec.describe 'Service Person' do
  it "Must Same Value" do
    age_death = 2
    year_death = 4
    person = Savior::Person.new(age_death,year_death)

    right_year = 4 - 2
    expect(person.year_coming).to eq(right_year)
  end

  it "Inheritance to Person Die" do
    age_death = 2
    year_death = 4
    person = Savior::Person.new(age_death,year_death)
    right_year = 4 - 2
    person_die = Savior::PersonDie.new(age_death,year_death)
    expect(person.total_died_on_year(right_year)).to eq(person_die.total_died_on_year(right_year))
  end
end
