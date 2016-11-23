class Assign
  def Calculation
    @num1=10
    @num2=2
    @num1 = @num2
    puts "Assignment operator = simply initialize the variable num1 with the value of num2 So, The value of num 1 now is #@num1"
    @num1+= @num2
    puts "Assignment operator += with be operated as num1=num1+num2 So, the value of num1 now is #@num1"
    @num1-= @num2
    puts "Assignment operator -= with be operated as num1=num1-num2 So, the value of num1 now is #@num1"
    @num1*= @num2
    puts "Assignment operator *= with be operated as num1=num1*num2 So, the value of num1 now is #@num1"
    @num1/= @num2
    puts "Assignment operator /= with be operated as num1=num1/num2 So, the value of num1 now is #@num1"
    @num1%= @num2
    puts "Assignment operator %= with be operated as num1=num1 % num2 So, the value of num1 now is #@num1"
    @num2**= 2
    puts "Assignment operator **= with be operated as num2=num2*2 So, the value of num2 now is #@num2"
  end
end
Ob=Assign.new
Ob.Calculation()