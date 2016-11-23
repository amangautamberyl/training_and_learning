class Conditional
  def Check
   x=1
   if (x>5)
   	 puts "x is greater than 5 "
   elsif (x<5)
     puts "x is less than 5"
   else 
     puts "x is equal to 5 unless and until it is not decimal"   	
   end
  end
end

Ob=Conditional.new
Ob.Check()