module Savior
  class Counting
    prepend SimpleCommand
    attr_reader :params, :person_a_output, :person_b_output, :average_output

    def initialize(params)
      @params = params
    end

    def call
      return nil if mandatory_missing
      return nil if age_negative
      proccess
    end


    private

      def proccess
        person_a = Person.new(params[:age_death_a], params[:year_death_a])
        total_died_year_person_a = person_a.total_died_on_year(person_a.year_coming)
        @person_a_output = "Person A born on Year = #{params[:age_death_a]} – #{params[:year_death_a]} = #{person_a.year_coming}, number of people killed on year #{person_a.year_coming} is #{total_died_year_person_a}."

        person_b = Person.new(params[:age_death_b], params[:year_death_b])
        total_died_year_person_b = person_b.total_died_on_year(person_b.year_coming)
        @person_b_output = "Person B born on Year = #{params[:age_death_b]} – #{params[:year_death_b]} = #{person_b.year_coming}, number of people killed on year #{person_b.year_coming} is #{total_died_year_person_b}."

        average_total = Savior::Average.count(total_died_year_person_a, total_died_year_person_b)
        @average_output = "So Average of 2 Person is #{average_total}"
      end

      def mandatory_missing
        required = [:age_death_a, :year_death_a, :age_death_b, :year_death_b]
        if required.all? {|k| params.has_key? k}
          return false
        else
          errors.add(:parameter, "Mandatory Missing")
          return true
        end
      end

      def age_negative
        if params[:age_death_a].to_i.negative? || params[:age_death_b].to_i.negative?
          errors.add(:value, "-1")
          return true
        else
          return false
        end
      end

  end
end
