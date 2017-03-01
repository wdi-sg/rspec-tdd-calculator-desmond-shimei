class Calculator
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def result
    @number
  end

  def reset(x)
    @number = x
  end

  def add(x)
    @number += x
    self
  end

  def subtract(x)
    @number -= x
    self
  end

  def multiply
    @number *= x
    self
  end

  def divide
    @number /= x
    self
  end

  def undo

  end

  def redo

  end

end
