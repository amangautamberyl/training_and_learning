$degree="MCA"						#global variable
class College
  
  @@subject="Ruby"					#class variable
  ID=7								#constant
  def Student(year)					#local variable
    @student_name= "Aman Gautam"	#instance variable
    puts" \n Hi friends my name is #@student_name id: #{ID} \n I am studying #@@subject \n I have done #$degree in the year #{year.inspect}"
   end
 end

 student1=College.new
 student1.Student(2016)