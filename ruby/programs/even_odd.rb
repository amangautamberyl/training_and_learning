class Even_odd

  def even_odd
    puts "Enter the number which you want to check even or odd"
    @num=gets.to_i
    if(@num%2==0)
    	puts "The entered number is even"
    else
    	puts "The entered number is odd"
    end
  end
end

ob=Even_odd.new
ob.even_odd()