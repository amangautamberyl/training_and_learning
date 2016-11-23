class MULTIPARAMETER

  def test(*number)
  	puts "The total number of parameters are: #{number.length}"
  	for i in 0 ... number.length
      puts " The value at i position is #{number[i]}"
	end  
  end
end

ob = MULTIPARAMETER.new
ob.test("1", "Aman", "India")
ob.test("2", "Ravi", "Delhi", "India")