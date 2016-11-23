class Comparison
  def Calculation
    @num1=10
    @num2=2
    @equal=(@num1==@num2)
    puts "Comparison operator == checks whether #@num1 = #@num2 or not So, The result is #@equal"
    @notequal=(@num1!=@num2)
    puts "Comparison operator != checks whether #@num1 != #@num2 or not So, The result is #@notequal"
    @greater=(@num1>@num2)
    puts "Comparison operator > checks whether #@num1 > #@num2 or not So, The result is #@greater"
    @lesser=(@num1<@num2)
    puts "Comparison operator < checks whether #@num1 < #@num2 or not So, The result is #@lesser"
    @greaterthan=(@num1>=@num2)
    puts "Comparison operator >= checks whether #@num1 >= #@num2 or not So, The result is #@greaterthan"
    @lessthan=(@num1<=@num2)
    puts "Comparison operator <= checks whether #@num1 <= #@num2 or not So, The result is #@lessthan"
    @combinedcomp=(@num1<=>@num2)
    puts "Comparison operator <=> checks whether #@num1 <=> #@num2 or not. It will return 0 if both are equal return 1 if num1 is greater than num2 else -1 So, The result is #@combinedcomp"    
  end
end
Ob=Comparison.new
Ob.Calculation()