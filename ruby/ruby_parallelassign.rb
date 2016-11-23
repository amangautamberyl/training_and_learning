class Passign

  def Swap
    @num1, @num2, @num3= 10, 2, 5
    puts "The value of num1 is: #@num1"
    puts "The value of num2 is: #@num2"
    puts "The value of num3 is: #@num3 \n"
    @num1 , @num2 = @num2 , @num3  
    puts "The value of num1 on swap with num2 is: #@num1"
    puts "The value of num2 on swap with num3 is: #@num2"
  end
end

Ob=Passign.new
Ob.Swap()