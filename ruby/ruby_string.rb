class String1

  def test
   @str_name= 'Aman Gautam'
   @str_comment= "India's most common place is delhi '\n'"		#\n escape character for new line
   puts " Hi #@str_name"
   puts " #@str_comment"  	
  end
end

ob = String1.new
ob.test