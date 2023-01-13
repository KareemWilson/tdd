class Solver
    def factorial(number)
      factorial = 1
      raise 'Number is less than 0' if number.negative?
  
      (1..number).each do |n|
        factorial *= n
      end
      factorial
    end
  
    def reversed(str)
      str.reverse
    end
  
    def fizzbuzz(number)
      if (number % 5).zero? && (number % 3).zero?
        'fizzbuzz'
      elsif (number % 5).zero?
        'buzz'
  
      elsif (number % 3).zero?
        'fizz'
      else
        number.to_s
      end
    end
end
