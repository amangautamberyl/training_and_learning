class Beryl

  @no_of_employees=0
  def initialize(id,name)
    @emp_id=id
    @emp_name=name
    puts "\nDetails of the employee: \nEmployee id= #@emp_id and Employee name= #@emp_name "		
  end

end 

emp=Beryl.new(1,"Aman Gautam")
emp=Beryl.new(2,"Aryan")
emp=Beryl.new(3,"Anand")


    

