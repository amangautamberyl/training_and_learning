class UnlessTest
  
  def Conditioncheck
  	@num=1
    unless @num>2 
      print "#@num is less than 2\n"
    else @num<=2
      print "#@num is greater than 2 or equal to 2\n"
    end
  end
end

un=UnlessTest.new
un.Conditioncheck()