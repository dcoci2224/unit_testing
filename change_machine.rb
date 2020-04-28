require "rspec"

# class ChangeMachine
#   def converter(number)
#     denominations = [25, 10, 5, 1]
#     coins = []
#     denominations.each do |denomination|
#       while number >= denomination
#         coins << denomination
#         number -= denomination
#       end
#     end
#     coins
#   end
# end

class ChangeMachine
  def converter(number)
    penny = 1
    nickel = 5
    dime = 10
    quarter = 25
    coins = []
    while number > 0
      if number >= quarter
        coins << quarter
        number -= quarter
      elsif number >= dime
        coins << dime
        number -= dime
      elsif number >= nickel
        coins << nickel
        number -= nickel
      else
        coins << penny
        number -= penny
      end
    end
    coins
  end
end

RSpec.describe ChangeMachine do
  describe "#converter" do
    it "should return [1] if given 1" do
      machine = ChangeMachine.new
      result = machine.converter(1)
      expect(result).to eq([1])
    end
    it "should return [1, 1] if given 2" do
      machine = ChangeMachine.new
      result = machine.converter(2)
      expect(result).to eq([1, 1])
    end
    it "should return [5] if given 5" do
      machine = ChangeMachine.new
      result = machine.converter(5)
      expect(result).to eq([5])
    end
    it "should return [5, 1, 1] if given 7" do
      machine = ChangeMachine.new
      result = machine.converter(7)
      expect(result).to eq([5, 1, 1])
    end
    it "should return [10, 1, 1] if given 12" do
      machine = ChangeMachine.new
      result = machine.converter(12)
      expect(result).to eq([10, 1, 1])
    end
    it "should return [25, 25, 10, 5, 1, 1, 1, 1] if given 69" do
      machine = ChangeMachine.new
      result = machine.converter(69)
      expect(result).to eq([25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
