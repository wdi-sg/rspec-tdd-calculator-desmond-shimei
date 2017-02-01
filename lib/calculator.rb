class Calculator
  attr_reader :result

  def initialize(val)
    @result = val
    @operation_history = []
    @operation_index = 0
  end

  def reset(val)
    @result = val
  end

  def add(amount)
    @result += amount
    save_operation('add', amount)
    self
  end

  def subtract(amount)
    @result -= amount
    save_operation('subtract', amount)
    self
  end

  def multiply(amount)
    @result *= amount
    save_operation('multiply', amount)
    self
  end

  def divide(amount)
    @result /= amount
    save_operation('divide', amount)
    self
  end

  def save_operation(operation, value)
    @operation_history.slice(@operation_index - 1)
    @operation_history.push(operation: operation,
                            value: value)
    @operation_index += 1
  end

  def operation(op, value)
    operator = op.downcase

    case operator
    when 'add'
      add(value)
    when 'subtract'
      subtract(value)
    when 'multiply'
      multiply(value)
    when 'divide'
      divide(value)
    else
      exit
    end
  end

  def undo
    unless @operation_history.empty?
      prev_op = @operation_history[@operation_index - 1][:operation]
      prev_value = @operation_history[@operation_index - 1][:value]

      case prev_op
      when 'add'
        @result -= prev_value
      when 'subtract'
        @result += prev_value
      when 'multiply'
        @result /= prev_value
      when 'divide'
        @result *= prev_value
      else
        exit
      end

      @operation_index -= 1
    end
    self
  end

  def redo
    p @operation_history
    if @operation_index < @operation_history.length
      next_op = @operation_history[@operation_index][:operation]
      next_value = @operation_history[@operation_index][:value]

      case next_op
      when 'add'
        @result += next_value
      when 'subtract'
        @result -= next_value
      when 'multiply'
        @result *= next_value
      when 'divide'
        @result /= next_value
      else
        exit
      end

      @operation_index += 1
    end
    self
  end
end
