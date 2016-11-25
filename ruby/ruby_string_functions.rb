class String1


=begin
  def string_repeat		#print the string repeatedly to the given number of times
   @str_name= "Aman Gautam \n"
   #@str_repeat=@str_name*10
   puts "#{@str_name*3}"  	
  end

  def string_concat		#join two strings
  	@str1='Aman'
  	@str2='Gautam'
  	puts "My name is : #{@str1+' '+@str2}\n"
  end


  def string_compare		#compare two strings
  	@str1='Aman'
  	@str2='aman'
  	puts " #{@str1 <=> @str2}\n"
  end


  def string_capitalize		#capitalize first letter
	@str1='aman'
	puts "#{@str1.capitalize}\n"
  end


  def str_casecmp		#case-insensitive comparison
  @str1='Aman'
  @str2='aman'
  puts "#{@str1.casecmp@str2}"
  end


  def str_center		#align the string by giving the number of spaces from both end
    @str1='Aman Gautam'
    puts "Before: #{@str1}"
    puts "After: #{@str1.center(20)} ."
  end



  def str_chomp					#disallow the string to move to next line since \n comes automatically at the end when a string is entered
  	@str1="My name is: Aman Gautam \n"
  	@str2="My name is: Aman Gautam"
  	puts "#{@str1.chomp} #{@str2}"  	
  end



  def str_chop 		#removes the last character from the string
    @str1='Aman Gautam'
    puts "Before: #{@str1}"
    puts "After: #{@str1.chop() .}"
  end


  def str_concat 		#joins two strings together
  	@str1="Aman"
  	@str2=" Gautam"
  	puts "#{(((@str1.concat(@str2)).concat(" ")).concat(@str1))}"
	  
  end

  def str_count			#count the number of times a substring or alphabet present in a string
  	@str1="Aman Gautam"
	puts "#{@str1.count('a')}"
  end  	
 
  def str_hash			#assign a hash tag code to the string
  	@str1="Aman Gautam"
  	puts "#{@str1.hash}"
  end



  def str_inspect(name)		#return the parameter value
    puts "@{name.inspect}"
  end	


  def str_replace			#replace the value with the new value
    @str1="Aman"
    puts "#{@str1}"
    puts "#{@str1.replace("aman")}"	
  end

 
  def str_reverse			#reverse print the string
  	@str1="Aman Gautam"
  	puts "#{@str1.reverse}"
  end	
=end

  def str_strip				#removes the spaces from the start of string		
  	@str1="    Aman Gautam."
  	puts "#@str1"
  	puts "#{@str1.strip}"
  end
=begin

  def str_swapcase			#changes the case of string i.e., lower to upper and vice-versa
  	@str1="aMAN gAUTAM."
  	puts "#{@str1.swapcase()}"
  end


def str_tofloat 			#convert the string to float value
  	@str1="20Aman19"
  	puts "#{@str1.to_f}"
  end


  def str_tointeger			#convert the string to integer value
  	@str1="20Aman19"
  	puts "#{@str1.to_i}"
  end 
=end 
end
ob = String1.new
#ob.string_repeat
#ob.string_concat
#ob.string_compare
#ob.string_capitalize
#ob.str_casecmp
#ob.str_center
#ob.str_chomp
#ob.str_chop
#ob.str_concat
#ob.str_count
#ob.str_hash
#ob.str_inspect("Aman Gautam")
#ob.str_replace
#ob.str_reverse
ob.str_strip
#ob.str_swapcase
#ob.str_tofloat
#ob.str_tointeger