class ArrayExample

  def simple_array
	  @str = Array.new(10) { |i| i = i*2 }
	  puts "#{@str.to_i}"
  end

end

ob=ArrayExample.new
ob.simple_array()
