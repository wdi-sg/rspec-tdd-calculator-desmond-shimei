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

  def multiply(x)
    @number *= x
    self
  end

  def divide(x)
    @number /= x
    self
  end

  def operation(x, y)
    if x == 'add'
      add(y)
    elsif x == 'subtract'
      subtract(y)
    elsif x == 'multiply'
      multiply(y)
    elsif x == 'divide'
      divide(y)
    else
      p 'Wrong operation'
    end
  end

  def undo
  end

  def redo
  end
end
