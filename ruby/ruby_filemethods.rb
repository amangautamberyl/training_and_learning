class Filemethods
  
  def sysread							#read the number of characters of text user want to read
    file1 = File.open("/home/beryl/Desktop/training_and_learning/ruby/file1.txt" , "r")
  	if file1
  	  content = file1.sysread(8)
  	  puts content
  	else
  	  puts "Unable to open file"
  	file1.close
  	end
  end
  
  def syswrite							#write the content in the file
    file1 = File.open("/home/beryl/Desktop/training_and_learning/ruby/file1.txt" , "a+")
  	if file1
  	  file1.syswrite("Regards, \n Aman Gautam \n")
  	  puts "line added sucessfully"
  	else
  	  puts "Unable to open file"
  	file1.close
  	end
  end

  def each_byte     					#add symbol or some character after each byte		
    file1 = File.open("/home/beryl/Desktop/training_and_learning/ruby/file1.txt" , "a+")
  	if file1
  	  file1.each_byte {|ch| putc ch; putc ?, }
  	  puts "line added sucessfully"
  	else
  	  puts "Unable to open file"
  	  file1.close
  	end
  end

  def ioreadline    					#add symbol or some character after each byte		
    file1= File.open("/home/beryl/Desktop/training_and_learning/ruby/file1.txt" , "a+")
  	if file1
  	  arr = IO.readlines("/home/beryl/Desktop/training_and_learning/ruby/file1.txt") 
  	  puts arr[4]
  	else
  	  puts "Unable to open file"
  	file1.close
  	end
  end

  def rename							#rename file with new name
  	File.rename("file1.txt","file-renamed.txt")				#file1.rename(oldname,newname)
  	puts "Name changed sucessfully"
  end

  def delete
  	File.delete("File1.txt")
	puts"Deleted succesfully"   
  end

  def permission
  	file1= File.open("/home/beryl/Desktop/training_and_learning/ruby/file1.txt" , "a+")
  	file1.chmod(421)
  end

  def foreach

  	IO.foreach("/home/beryl/Desktop/training_and_learning/ruby/file-renamed.txt") do {|block| puts block}
  end

  # def filesize

  # end

end

ob=Filemethods.new
#ob.sysread
#ob.syswrite
#ob.eachbyte
#ob.ioreadline
#ob.rename
#ob.delete
#ob.permission
ob.foreach