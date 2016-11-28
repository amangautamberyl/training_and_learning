class Prime

  def prime()
  	puts "Enter the number you want to check as prime:"
    @n=Integer(gets)
    @a=0
    for i in 2..@n-1
      if (@n%i == 0)    
        @a=@a+1 
      end	 
    end
     if (@a==0)
     	puts "the entered number is prime"
     else 
     	puts "the entered number is not prime"
     end
  end
end

ob=Prime.new
ob.prime()
