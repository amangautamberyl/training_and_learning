class Arithmetic
  def Calculation
    @num1=10
    @num2=2
    @add = @num1+@num2
    puts "The addition of #@num1 and #@num2 is: #@add"
    @sub = @num1 - @num2
    puts "the substraction of #@num1 and #@num2 is: #@sub"
    @mul = @num1 * @num2
    puts "the multiplication of #@num1 and #@num2 is: #@mul"
    @div = @num1/@num2
    puts "the division of #@num1 and #@num2 is: #@div"
  	@mod = @num2 % @num1
  	puts "the remainder of #@num1 and #@num2 is: #@mod"
  	@pow = @num1 ** @num2
  	puts " the power #@num2 on #@num1 is: #@pow"
  end
end

Ob=Arithmetic.new
Ob.Calculation()