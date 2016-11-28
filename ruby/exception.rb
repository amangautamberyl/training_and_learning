class ExceptionBasic
 
 def divide_by_zero
   begin
     print("enter the numerator")
     num=Integer(gets)
     print("enter the denominator")
     dem=Integer(gets)
     ratio = num/dem
     puts ratio
     rescue Exception => e    
     puts e.message             # give type of error like in this case divide by 0
     puts e.backtrace.inspect   # inspect file name with line number by which erroe is occuring
   end  
 end
 
 def divide_by_zero_with_retry
    begin
     print("enter the numerator\n ")
     num=Integer(gets)
     print("enter the denominator \n")
     dem=Integer(gets)
     ratio = num/dem
     puts ratio
     rescue
       #print(oops)
       print("\n enter the denominator other than 0..\n ")
       retry                    # control back to start of begin
     rescue ArgumentError
       print("enter numeric values only..\n\n")
       retry
       ensure
       print("hello")    
    end
 end  

 obj=ExceptionBasic.new
 #obj.divide_by_zero
 obj.divide_by_zero_with_retryend