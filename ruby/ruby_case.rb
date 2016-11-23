class CaseTest
  
  def Conditioncheck
  	@age=10;
  	case @age
  	when 0 .. 6
  		puts "since age is #@age So, you are Baby"
  	when 7 .. 12
  		puts "since age is #@age So, you are  child"
  	when 13 .. 18
  		puts "since age is #@age So, you are youth"
  	else
  		puts "since age is #@age So, you are adult"
  	end
    
  end
end

un=CaseTest.new
un.Conditioncheck()