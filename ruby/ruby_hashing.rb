module Hash_def
  HASH1 = Hash["Name"=>"Aman Gautam", "Company" => "Beryl"]
  HASH2 = Hash[1 => 'January', 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August" , 9 => "September", 10 => "October", 11 => "November", 12 => "December"]
  HASH3 = Hash["FirstName" => "Aman", "Last Name" => "Gautam"]
  HASH4 = Hash["Name" => "Aman", "Company" => "Beryl Solutions"]
  HASH5 = Hash["First Name" => "Aman Gautam", "Company" => "Beryl"]
  HASH6 = Hash["Name" => "Aman ", "Company" => "Beryl"]
  HASH7 = Hash["Name" => "Aman Gautam", "Company" => "Beryl"]
  HASH8 = Hash[1 => "Aman", 2 => "Ravi"]
  HASH9 = Hash[]
  HASH10 = Hash[]
end

class Hashing
  include Hash_def   

  
  def basic
    puts "#{HASH1["Name"]}"	
  end
  

  def monthfinder			#month name on the basis of month in number

  	puts "Enter the number between 1-12 to get the month name:"
  	mon = gets
  	a=mon.to_i;					#convert to integer
  	
  	if (a>=1 && a <=12)
  	  puts "The month is : \t #{HASH2[a]}"
  	else
  	  puts "wrong month key, it should be between 1-12."
  	end
  end 

  def hashequal 		#checks two hashes are equal or not
    puts "Hash1 and hash 3 are equal is : #{HASH1==HASH3}"
    puts "Hash1 and hash 4 are equal is : #{HASH1==HASH4}"
    puts "Hash1 and hash 5 are equal is : #{HASH1==HASH5}"  
    puts "Hash1 and hash 6 are equal is : #{HASH1==HASH6}"
    puts "Hash1 and hash 7 are equal is : #{HASH1==HASH7}"
  end

  def hashkey      		#extract the value on the entered key
  	puts "#{HASH2[3]}"
  end

  def hashclear			#clear all the key and value of the hash
  	puts "The value in hash8 are: #{HASH8}"
    puts("On clearing the value of hash8, the result now is : #{HASH8.clear}")
  end

 def hashsetdefaultvalue		#set default value	  
   HASH8.default="No record"
   puts "The value in hash8 are:  #{HASH8[1]}"
   puts "The default value if key is not present in hash : #{HASH8['']}"
 end

 def hashdelete 		#deletes the value based on entered key
   puts "The value in hash8 are: #{HASH8}"
   puts "The deleted value is : #{HASH8.delete(2)}"
   puts "The value in hash8 are: #{HASH8}"
 end

 
  def hashdefault			#show default if key not present 						
    puts "The value in hash8 are: #{HASH8}"
    puts "Default value of hash8 is : #{HASH8.default()}"  
    puts "#{HASH8[1]} and #{HASH8[2]}"
    puts "#{HASH8[3]}"
  end   
 
  def hasheach  #stores all keys in key and all values in value
  	HASH8.each { |key,value| puts "The keys is: #{key} and its value is: #{value} "}
  end	

  def hashempty			#check if hash is empty or not?
    puts "HASH9 is empty:  #{HASH9.empty?}"
    puts "HASH8 is empty: #{HASH8.empty?}" 
  end

  def hashfetchkey				#return value using key and if key is not present we can set default value
    puts "#{HASH8.fetch(2)}"
    puts "#{HASH8.fetch(2,"sorry wrong key")}"
    puts "#{HASH8.fetch(3,"sorry wrong key")}"
  end	

  def hashhaskey			#check whether key is present in hash or not				
    puts "The key = 2 is present in hash2: #{HASH2.key?(2)}"
    puts "The key = 13 is present in hash2: #{HASH2.key?(13)}"
  end

  def hashhasvalue				#check whether value is present in hash or not
    puts "The value = March is present in hash2: #{HASH2.value?('March')}"
    puts "The value = Aman  is present in hash2: #{HASH2.key?('Aman')}"
  end

  def hashindex				#return the key for respective value
    puts " The key of value April is : #{HASH2.index('April')}"
  end

  def hashinspect			#return string version of hash
  	puts HASH2.inspect
  end

  def hashinvert			#return string version of hash
  	puts HASH2.invert
  end
 
  def hashhaslength			#return the size of array
  	puts HASH2.length
  end

  def hashmerge			#concatenate hashes
  	puts HASH7.merge(HASH8)
  end

  def hashsort			#sort the hash by key in alphabetical order and acc to number 
  	print HASH7.sort
  end

  def hashstore			#store element to array
  	puts "Before storing: #{HASH10}"
  	HASH10.store("Department","HR")
  	puts "After storing: #{HASH10}"
  end

  def hashtoarray		#print hash as an array
  	puts "As hash: #{HASH7}"
  	puts "As Array: #{HASH7.to_a}"
  end

  def hashtostring
  	puts "As hash: #{HASH7}"
  	puts "As String: #{HASH7.to_s}"
  end	

  def hashvalues
  	puts "values in hash are: #{HASH2.values}"
  end
end

ob = Hashing.new
#ob.basic
#ob.monthfinder
#ob.hashequal
#ob.hashkey
#ob.hashclear
#ob.hashsetdefaultvalue
#ob.hashdefault
#ob.hashdelete
#ob.hasheach
#ob.hashempty
#ob.hashfetchkey
#ob.hashhaskey
#ob.hashhasvalue
#ob.hashindex
#ob.hashinspect
#ob.hashinvert
#ob.hashhaslength
#ob.hashmerge
#ob.hashsort
#ob.hashstore
#ob.hashtoarray
#ob.hashtostring
ob.hashvalues