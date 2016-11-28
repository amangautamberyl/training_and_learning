class Fibonacci

  def fibo()
  	puts "Enter the limit of fibonacci series:"
    @n=Integer(gets)
    @a=0
    @b=1
    @sum=0
    puts "#{@a}"
    for i in 1..@n-1
      @sum=@a+@b
	  puts "#{@sum}"    	
      @a=@b
      @b=@sum
    end
  end	 
end

ob=Fibonacci.new
ob.fibo()
