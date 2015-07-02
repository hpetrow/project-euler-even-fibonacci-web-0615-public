# Implement your procedural solution here!
def even_fibonacci_sum(n)
  fibonacci(n).inject(0) { |sum, n|
    if (n % 2 == 0)
      sum + n
    else
      sum
    end
  }
end

def fibonacci(n)
  sequence = [1, 1]
  next_term = sequence[-1] + sequence[-2]

  until next_term >= n
    sequence << next_term
    next_term = sequence[-1] + sequence[-2]
  end

  sequence
end
