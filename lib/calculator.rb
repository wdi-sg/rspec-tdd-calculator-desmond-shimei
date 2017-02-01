class Calculator
  attr_reader :result

  def initialize(val)
    @result = val
  end

  def reset(val)
    @result = val
  end

  def add(amount)
    @result += amount
  end

  def subtract(amount)
    @result -= amount
  end

  def multiply(amount)
    @result *= amount
  end

  def divide(amount)
    @result /= amount
  end
end
