require 'pry'
class StackPlus
  attr_reader :inc, :stack
  def initialize
    @stack = []
    @inc = []
  end

  def push(value)
    stack.push(value)
    inc.push(0)
  end

  def pop
    return -1 if stack.size == 0

    popped_value = stack.pop
    popped_inc = inc.pop
    if inc.last
      last_inc = inc.last + popped_inc
      inc[inc.size - 1] = last_inc
    end
    popped_value + popped_inc
  end

  def increment(n)
    position = [n, stack.size].min - 1
    inc[position] += 1 if position >= 0
  end
end

# binding.pry
# 0