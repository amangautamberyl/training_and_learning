class ArrayExample

  def simple_array
	  #@str_details=Array ['id','firstname', 'lastname','company'][1,'Aman', 'Gautam', 'Beryl']	#define array
	  @str_details = Array['id','firstname', 'lastname', 'Company' ],[1,'Aman', 'Gautam','Beryl'],['2', 'Anand', 'Kumar', 'Beryl']
	  #@empty_array = Array.new							#blank array
	  puts "#{@str_details[0][0]} \t #{@str_details[0][1]} \t #{@str_details[0][2]} \t #{@str_details[0][3]}"
	  puts "#{@str_details[1][0]} \t #{@str_details[1][1]} \t \t #{@str_details[1][2]} \t #{@str_details[1][3]} "
	  puts "#{@str_details[2][0]} \t #{@str_details[2][1]} \t \t #{@str_details[2][2]} \t \t #{@str_details[2][3]} "
      #puts "#{@empty_array}"		 
  end

end

ob=ArrayExample.new
ob.simple_array()
