module Savior
  class PersonDie
    def initialize(year,time=nil)

    end

    def total_died_on_year(year)
      total = 0
      (1..year).each do |i|
        total += counting(i)
      end
      return total
    end

    private
      def counting(i)
        return  i if i <= 1
        counting( i - 1 ) + counting( i - 2 )
      end
  end
end
