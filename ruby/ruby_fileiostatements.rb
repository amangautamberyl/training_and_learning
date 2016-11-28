class FileIO
	def fileio
		@str1 = "Aman Gautam"
		puts " The entered string is #{@str1}"
		puts "Enter a string"
		@str2 = gets
		puts " The entered string is #{@str2}"
		putc "The first character of the string is #{@str2} "
		print "Finally string 1 is : #{@str1}"
		print "and string 2 is : #{@str2}"
	end
end

ob = FileIO.new
ob.fileio