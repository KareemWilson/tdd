require_relative '../solver'

describe Solver do
  solver = Solver.new
  context 'when using factorial function' do
    it 'Should return factorial of a given number' do
      factorial = solver.factorial(5)
      expect(factorial).to eq(120)
    end
    it 'Should return 1 when number equal to zero' do
      factorial = solver.factorial(0)
      expect(factorial).to eq(1)
    end
    it 'should return an error if the given number is negative' do
      expect { solver.factorial(-2) }.to raise_error('Number is less than 0')
    end
  end

  context 'when using reverse function' do
    it 'Should return reversed string of a given string' do
      reversed_str = solver.reversed('hello')
      expect(reversed_str).to eq('olleh')
    end
  end

  context 'when using fizzbuzz function' do
    it 'Should return fizz When a given number is divisible by 3' do
      returned_value = solver.fizzbuzz(21)
      expect(returned_value).to eq('fizz')
    end
    it 'Should return buzz When a given number is divisible by 5' do
      returned_value = solver.fizzbuzz(20)
      expect(returned_value).to eq('buzz')
    end
    it 'Should return fizzbuzz When a given number is divisible by 3 and 5' do
      returned_value = solver.fizzbuzz(15)
      expect(returned_value).to eq('fizzbuzz')
    end
    it 'Should return the same input in string type when is not divisible by 3 or 5 ' do
      returned_value = solver.fizzbuzz(7)
      expect(returned_value).to eq('7')
    end
  end
end
