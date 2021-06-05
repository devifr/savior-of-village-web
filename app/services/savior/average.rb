module Savior
  class Average
    attr_reader :total_a, :total_b

    def initialize(total_died_a, total_died_b)
      @total_a = total_died_a
      @total_b = total_died_b
    end

    def self.count(total_died_a, total_died_b)
      average = new(total_died_a, total_died_b)
      average.total
    end

    def total
      total_both = (total_a + total_b).to_f
      average_total = total_both / 2
      return average_total
    end
  end
end
