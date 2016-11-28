class Pattern

  def pattern1
    puts " Enter the number of line you want to print as star pattern:"
    @n=Integer(gets)	
    for i in 1..@n
    	for j in 1..i
    		print ("*")
    	end
    	puts ("\n")
    end
  end

  def pattern2
    puts " Enter the number of line you want to print as star pattern:"
    @n=Integer(gets)
      for i in @n.step(1,-1)
  	    for j in 1..i
  	  	  print "*"
  	    end
  	    puts ("\n")
      end
   end

  def pattern3
  	puts " Enter the number of line you want to print as star pattern:"
    @n=Integer(gets)
    @s=@n-1
   	for i in 1..@n
  		for j in (@n-1).step(i,-1)
  			print " "
  		end
  		for k in 1..i
  			 print "*"
  		end
  	print "\n"
  	end	  		
  end

    def pattern4
  	  puts " Enter the number of line you want to print as star pattern:"
      @n=Integer(gets)
  	  for i in 1..@n
  	  	for j in 1..i-1
  	  		print " "
  	  	end
  		for k in @n.step(i,-1)
  			 print "*"
  		end
  	  print "\n"
  	  end
    end

   def pattern5
  	puts " Enter the number of line you want to print as star pattern:"
    @n=Integer(gets)
  	for i in 1..@n
  		for j in (@n-1).step(i,-1)
  			print " "
  		end
  		for k in 1..(2*i)-1
  			 print "*"
  		end
  	print "\n"
  	end	  		
  end
  
  def pattern6
  	puts " Enter the number of line you want to print as star pattern:"
    @n=Integer(gets)
  	for i in 1..@n
  		for j in (@n-1).step(i,-1)
  			print " "
  		end
  		for k in 1..(2*i)-1
  			 if (k%2==0)
  			 	print "A"
  			 else
  			 	print "*"
  			 end
  		end
  	print "\n"
  	end	  		
  end

def pattern7
  	puts " Enter the number of line you want to print as star pattern:"
    @n=Integer(gets)
  	for i in 1..@n
  		for j in (@n-1).step(i,-1)
  			print " "
  		end
  		for k in 1..(2*i)-1
  			 print "#{k}"
  		end
  	print "\n"
  	end	  		
  end

 
def pattern8
  	puts " Enter the number of line you want to print as star pattern:"
    @n=Integer(gets)
  	for i in 1..@n
  		@num=i
  		for j in (@n-1).step(i,-1)
  			print " "
  		end
  		for k in 1..(i)	 
  			 print "#{@num}"
  			 @num+=1
  		
  		end
  		@num-=1
  		for l in 1..i-1
  			@num-=1
  			print "#{@num}"
  		end
  	print "\n"
  	end	  		
  end


end
 
ob=Pattern.new
#ob.pattern1()
#ob.pattern2()
#ob.pattern3()
#ob.pattern4()
#ob.pattern5()
#ob.pattern6()
#ob.pattern7()
ob.pattern8()