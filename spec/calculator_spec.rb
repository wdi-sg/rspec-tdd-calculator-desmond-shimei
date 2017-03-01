require_relative 'spec_helper'
require_relative '../lib/calculator'



describe Calculator do
  before(:context) do
    @calculator = Calculator.new(1)
  end

describe 'Accessors' do
  it 'should return current results' do
    expect(@calculator.result).to eq(1)
  end

  it 'should reset the calculator' do
    expect(@calculator.reset(x)).to eq(0)
  end
end

  describe 'Methods' do
    it 'should add x to the internal result value' do
      @calculator.add(5)
      expect(@calculator.add(x)).to eq(6)
      # if x can be a valid number
    end

    it 'should subtract x from the internal result value' do
      @calculator.subtract(5)
      expect(@calculator.subtract(x)).to eq(-4)
      # if x can be a valid number
    end

    it 'should multiply x by the internal result value' do
      @calculator.multiply(5)
      expect(@calculator.multiply(x)).to eq (5)
      # save the new value
      # if x can be a valid number
    end

    it 'should divide the internal result value by x' do
      @calculator.divide(5)
      expect(@calculator.divide(x)).to eq (0.2)
      # save the new value
      # if x can be a valid number
    end

    it 'should be chaninable in any order' do
      @calculator.add(10).subtract(5)
      expect(@calculator.add(x).subtract(y)).to eq (6)
    end

    it 'should apply all operation with the value of x' do
      @calculator.operation('add', 5)
      expect(@calculator.operation('add', 5)).to eq (6)
    end

    it 'should undo the previous operation' do
      @calculator.add(5)
      @calculator.undo
      expect(@calculator.undo).to eq (1)

    end
    end
  end
