class Methodreturn

  def test
    @num1=10
    @num2=20
    @num3=@num1+@num2
    return @num3 
  	
  end
end

ob = Methodreturn.new
a=ob.test
puts "The resultant value is #{a}"