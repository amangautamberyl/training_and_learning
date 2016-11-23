class String1

  def string_repeat
   @str_name= "Aman Gautam \n"
   #@str_repeat=@str_name*10
   puts "#{@str_name*2}"  	
  end

  def string_concat
  	@str1='Aman'
  	@str2='Gautam'
  	puts "My name is : #{@str1+' '+@str2}"
  end


  def string_compare
  	@str1='Aman'
  	@str2='aman'
  	puts " #{@str1 <=> @str2}"
  end
end

ob = String1.new
ob.string_repeat
ob.string_concat
ob.string_compare