module Array_def
	ARRAY1 = ['id', 'Name']
	ARRAY2 = ['id', 'First_Name', 'Last_Name','company']
    ARRAY3 = [ 'ID', 'NAME']
    ARRAY4 = [ '1' , 'Aman', 'Gautam', 'Beryl']
    ARRAY5 = ['id','Name', 'Name_of_company', ['id', 'Name'], ['Name', 'id']]
    ARRAY6 = ['1', 'Aman']
    ARRAY7 = []
    ARRAY8 = ['1', '2', 'Aman', '*', '@']
    ARRAY9 = [['1', '2'], '2', 'Aman', '*', '@']
    ARRAY10 = ['1', '2', 'Aman', nil, '@', nil]
end

class ArrayExample
  include Array_def


  def simple_array
	  @str = Array.new(10) { |i| i = i*2 }
	  puts "#{@str}"
  end

  def array_commonfields					#extract the common columns between tables
	  puts "#{ARRAY1 & ARRAY2}"
  end

  def array_concatenation					#join two arrays
  puts "#{ARRAY1+ARRAY2}"
  end  

  def arrayabc								#compare arrays based on the column values, it is case sensitive
    puts "#{ARRAY1 <=> ARRAY3}"
  end

  def array_removeduplicates				#removes duplicates and return new array
  	puts "#{ARRAY1 | ARRAY2}"
  end


  def array_insertobject					#insert new column to existing array
  	puts "Before: #{ARRAY1}"
    puts "After insertion: #{ARRAY1<<'Company'}"	
  end

  def array_equal
  	puts "#{ARRAY1==ARRAY5}"
  end	
 

  def array_equal				#return the array value as per index
  	puts "#{ARRAY2[2]}"
  	puts "#{ARRAY2[2,1]}"		# array[start,length]
  	puts "#{ARRAY2.slice(3)}"
  end	

  def array_extraction				#not working
    puts ARRAY2.abbrev(pattern = '[/[a-z]/]')
  end

  def array_association			#not working
    puts "#{ARRAY5.assoc(['1'])}"
  end


  def array_at											#gives the element at the position checked
  	puts "Element at position1 : #{ARRAY4.at(1)}"
  	puts "Element at position0 : #{ARRAY4.at(0)}"	
    puts "Element at position1 from last : #{ARRAY4.at(-1)}"
  end


  def array_clear								#removes the element of arrays
  	puts "#{ARRAY6}"
  	puts "Element on clear : #{ARRAY6.clear}"	
  end


  def array_emptycheck						#check whether arrays are empty or not
  	puts "Check : #{ARRAY7.empty?}"	
  end


  def array_equalcheck						#check whether two arrays are equal or not (case sensitive)
  	puts "Check : #{ARRAY1.eql?(ARRAY3)}"	
  end


  def array_size				#return the size of array
    puts "#{ARRAY5.size()}"
  end

  def array_sort 				#sort the array according to ascii value
  	puts "#{ARRAY8.sort}"
  end

  def array_pop					#gives back the last element of the array and nil if array is empty
  	puts "#{ARRAY2.pop}"
    puts "#{ARRAY7.pop}"
  end  

  def array_push				#insert element in the array 
  	puts "#{ARRAY8.push('&')}"
  end

  def array_reverse				#reverse the elements of the array
    puts "#{ARRAY2.reverse}" 
  end

  def array_compact
    puts "#{ARRAY10.compact}"
  end 
end

ob=ArrayExample.new
#ob.simple_array()
#ob.array_commonfields()
#ob.array_concatenation()
#ob.array_removeduplicates()
#ob.array_insertobject()
#ob.array_equal()
#ob.array_equal()
#ob.array_extraction()
#ob.array_association()
#ob.array_at()
#ob.array_clear()
#ob.array_emptycheck()
#ob.array_equalcheck
#ob.array_size
#ob.array_sort
#ob.array_pop
#ob.array_push
#ob.array_reverse
ob.array_compact