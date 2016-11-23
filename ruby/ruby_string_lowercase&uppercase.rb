class String1

  def test
   @str_name= 'Aman Gautam'
   puts " Hi #@str_name"
   @str_upper=@str_name.upcase
   puts "The entered string in uppercase is #@str_upper"  	
   @str_lower=@str_name.downcase
   puts "The entered string in lowercase is #@str_lower"
  end
end

ob = String1.new
ob.test