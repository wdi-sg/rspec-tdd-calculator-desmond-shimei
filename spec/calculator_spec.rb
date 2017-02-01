require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do

  before(:example) do
    @new_calculator = Calculator.new(6)
  end

  describe 'initialization' do
    it "should be an instance of the calculator class" do
      expect(@new_calculator).to be_an_instance_of(Calculator)
    end

    it "has a result variable" do
      expect(@new_calculator.result).to eq(6)
    end

    it "has a result variable that is read-only" do
      # @new_calculator.result = 3 if @new_calculator.respond_to? (:result=)
      expect(@new_calculator.result= 3).to raise_error(NoMethodError)
      # expect(@new_calculator.result).to eq(6)
    end
  end

  describe 'basic operations' do
    it 'can reset' do
      @new_calculator.reset(10)
      expect(@new_calculator.result).to eq(10)
    end

    it 'can add' do
      @new_calculator.add(4)
      expect(@new_calculator.result).to eq(10)
    end

    it 'can subtract' do
      @new_calculator.subtract(1)
      expect(@new_calculator.result).to eq(5)
    end

    it 'can multiply' do
      @new_calculator.multiply(2)
      expect(@new_calculator.result).to eq(12)
    end

    it 'can divide' do
      @new_calculator.divide(3)
      expect(@new_calculator.result).to eq(2)
    end
  end

  describe 'chainable methods' do
    it 'can chain methods' do
      @new_calculator.add(4).subtract(5).divide(5).multiply(2)
      expect(@new_calculator.result).to eq(2)
    end
  end

  describe 'operation methods using 2 params (operator, value)' do
    it 'can add with ("add", value)' do
      @new_calculator.operation('add', 4)
      expect(@new_calculator.result).to eq(10)
    end

    it 'can subtract with ("subtract", value)' do
      @new_calculator.operation('subtract', 5)
      expect(@new_calculator.result).to eq(1)
    end

    it 'can divide with ("divide", value)' do
      @new_calculator.operation('divide', 3)
      expect(@new_calculator.result).to eq(2)
    end

    it 'can multiply with ("multiply", value)' do
      @new_calculator.operation('multiply', 10)
      expect(@new_calculator.result).to eq(60)
    end
  end

  describe 'undo and redo feature' do
    it 'can undo last operation, if x is a valid number' do
      @new_calculator.add(6)
      @new_calculator.undo(1)
      expect(@new_calculator.result).to eq(6)
    end

    it 'can redo last operation, if x is a valid number' do
      @new_calculator.add(6)
      @new_calculator.undo(1)
      @new_calculator.redo(1)
      expect(@new_calculator.result).to eq(12)
    end
  end

end
