module Savior
  class Person < PersonDie
    attr_reader :age_death, :year_death

    def initialize(age_death, year_death)
      @age_death = age_death.to_i
      @year_death = year_death.to_i
    end

    def year_coming
      year = year_death - age_death
      return year
    end

  end
end
