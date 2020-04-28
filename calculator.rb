require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# puts "Test the add method"
# calculator = Calculator.new
# if calculator.add(1, 1) == 2
#   puts "Test passed!"
# else
#   puts "Test failed!"
# end
RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 4)
      expect(result).to eq(5)
    end
    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -5)
      expect(result).to eq(-4)
    end
  end
  describe "#subtract" do
    it "should return a number subtracted from another number" do
      calculator = Calculator.new
      result = calculator.subtract(10, 5)
      expect(result).to eq(5)
    end
  end
  describe "multiply" do
    it "should return a number mutliplied by another number" do
      calculator = Calculator.new
      result = calculator.multiply(10, 10)
      expect(result).to eq(100)
    end
  end
  describe "divide" do
    it "should return a number divided by another number" do
      calculator = Calculator.new
      result = calculator.divide(20, 5)
      expect(result).to eq(4)
    end
  end
  describe "square" do
    it "should return a number times itself" do
      calculator = Calculator.new
      result = calculator.square(8)
      expect(result).to eq(64)
    end
  end
  # def "power" do
  #   it "should return" do
  #   calculator = Calculator.new
  #   result = calculator.power(4)
  #   expect(result).to eq()
  #   end
  # end
end
