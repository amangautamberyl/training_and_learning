class Factorial

  def fact()
  	puts "Enter the number whose factorial you want to print:"
    @num=gets.to_i
    @fact=1
    while (@num>=1)
    	@fact=@fact*@num
    	@num-=1
    end
    puts "The factorial is #{@fact}"
  end

end

ob=Factorial.new
ob.fact()
