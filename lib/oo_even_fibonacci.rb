# Implement your object-oriented solution here!
class EvenFibonacci
  attr_reader :max

  def initialize(max)
    @max = max
  end

  def sum
    self.fibonacci.inject(0) { |sum, n|
      if (n % 2 == 0)
        sum + n
      else
        sum
      end
    }
  end

  def fibonacci
    sequence = [1, 1]
    next_term = sequence[-1] + sequence[-2]

    until next_term >= self.max
      sequence << next_term
      next_term = sequence[-1] + sequence[-2]
    end

    sequence
  end
end
