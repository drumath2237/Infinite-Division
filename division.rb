# this class is do division for projects that need to show the num_bers in large double numbers
class Division
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def division(accuaracy)
    result = []
    num_a = @num1
    num_b = @num2

    tmp = num_a / num_b
    result << tmp << '.'
    num_a = (num_a - num_b * tmp) * 10
    accuaracy.times do
      tmp = num_a / num_b
      result << tmp
      num_a = (num_a - num_b * tmp) * 10
    end
    result
  end
end
