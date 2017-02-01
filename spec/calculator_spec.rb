require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do

  before(:context) do
    new_calculator = Calculator.new(6)
  end

  describe 'initialization' do
    it "should be an instance of the calculator class" do
      expect(new_calculator).to instance_of? (Calculator)
    end

    it "has a result variable" do
      expect(new_calculator.result).to eq(6)
    end

    it "has a result variable that is read-only" do
      expect(new_calculator.result = 3).to raise_error(NoMethodError)
    end
  end

  describe 'basic operations' do
    it 'can add' do
      new_calculator.add(4)
      expect(new_calculator.result).to eq(10)
    end

    it 'can subtract' do
      new_calculator.subtract(1)
      expect(new_calculator.result).to eq(5)
    end

    it 'can multiply' do
      new_calculator.multiply(2)
      expect(new_calculator.result).to eq(12)
    end

    it 'can divide' do
      new_calculator.subtract(3)
      expect(new_calculator.result).to eq(2)
    end
  end

  # Tests go here
end
