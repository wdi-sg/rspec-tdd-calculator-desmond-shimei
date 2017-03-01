require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  before(:context) do
    @calculator = Calculator.new(1)
  end

describe 'Initialization' do
  it 'is an instance of the Calculator class' do
    expect(@calculator).to be_instance_of(Calculator)
  end
end

describe 'Accessors' do
  it 'should return current results' do
    expect(@calculator.result).to eq(1)
  end

  it 'should reset the calculator' do
    @calculator.reset(3)
    expect(@calculator.number).to eq(3)
  end
end

  describe 'Methods' do
    it 'should add x to the internal result value' do
      @calculator.add(5)
      expect(@calculator.result).to eq(8)
      # if x can be a valid number
    end

    it 'should subtract x from the internal result value' do
      @calculator.subtract(3)
      expect(@calculator.result).to eq(5)
      # if x can be a valid number
    end

    it 'should multiply x by the internal result value' do
      @calculator.multiply(5)
      expect(@calculator.result).to eq(25)
      # save the new value
      # if x can be a valid number
    end

    it 'should divide the internal result value by x' do
      @calculator.divide(5)
      expect(@calculator.number).to eq(5)
      # save the new value
      # if x can be a valid number
    end

    it 'should be chaninable in any order' do
      @calculator.add(10).subtract(5).multiply(3).divide(3)
      expect(@calculator.result).to eq(10)
    end

    it 'should apply all operation with the value of x' do
      @calculator.operation('add', 5)
      expect(@calculator.result).to eq(15)
    end

    it 'should undo the previous operation' do
      @calculator.add(5)
      @calculator.undo
      expect(@calculator.undo).to eq(15)
    end

    it 'should redo the previous operation' do
      @calculator.add(5)
      @calculator.redo
      expect(@calculator.undo).to eq(20)
    end
  end
end
